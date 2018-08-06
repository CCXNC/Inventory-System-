<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Report_model extends CI_Model 
{
	public function get_alltransactions()
	{
		$this->db->select('branches.code as branch_code, branches.name as branch_name, transaction.id as tran_id, transaction.date as tran_date, transaction.total as tran_total');
		$this->db->from('transaction');
		$this->db->join('branches', 'transaction.branch_id = branches.id');
		$query = $this->db->get();

		return $query->result();
	}

	public function get_transid()
	{
		$this->db->select('id');
		$this->db->from('transaction');
		$this->db->order_by('id', 'DESC');

		$query = $this->db->get();

		return $query->row();
	}

	/*public function get_items_and_trans($id)
	{
		$this->db->where('id', $id);
		$query = $this->db->get('transaction');

		return $query->result();
	}*/

	public function get_items_and_trans($id)
	{
		$this->db->select('
			branches.name as branch_name,
			purchase_items.item_name as purchase_items_name,
			purchase_items.item_code as purchase_items_code,
			purchase_items.description purchase_items_description,
			purchase_items.price as purchase_items_price,
			transaction.id,
			transaction.total as trans_total
		');
		$this->db->from('transaction');
		$this->db->join('branches', 'transaction.branch_id = branches.id');
		$this->db->join('purchase_items', 'transaction.id = purchase_items.trans_id');
		$this->db->where('transaction.id', $id);
		$query = $this->db->get();

		return $query->result();
	}

	public function get_trans_total($id)
	{
		$this->db->select('total');
		$this->db->from('transaction');
		$this->db->where('id', $id);
		$query = $this->db->get();

		return $query->row();
	}

	public function get_trans_branch($id)
	{
		$this->db->select('
			branches.name as name'
		);
		$this->db->from('transaction');
		$this->db->join('branches', 'transaction.branch_id = branches.id');
		$this->db->where('transaction.id', $id);
		$query = $this->db->get();

		return $query->row();
	}

	public function delete_alltransactions($id)
	{
		$this->db->trans_start();

		$this->db->where('trans_id', $id);
		$this->db->delete('purchase_items');

		$this->db->where('id', $id);
		$this->db->delete('transaction');

		$trans = $this->db->trans_complete();

		return $trans;
	}

	public function add_technical()
	{
		$this->db->trans_start();

		$ip = $_SERVER['REMOTE_ADDR'];
		$date = date('Y-m-d');
				
		$data = array(
			'host_ip'				=> $ip,
			'encode_by'		 	=> $this->session->userdata('username'),
			'url'		  			=> '/purchase/add_item',
			'message_title'	=> 'Added technical_entry [date:'.date('Y-m-d').']',
		);
 
		$this->db->insert('logs', $data);

		$start_date = date('Y-m-d', strtotime($this->input->post('start_date')));
		$end_date = date('Y-m-d', strtotime($this->input->post('end_date')));

		$data = array(
			'branch_id'   => $this->input->post('branch'),
			'name'        => $this->input->post('name'),
			'start_date'  => $start_date,
			'end_date'    => $end_date,
			'description' => $this->input->post('description'),
   		'trans_by'   	=> $this->session->userdata('username')
		);

		$this->db->insert('technical', $data);

		$trans = $this->db->trans_complete();

		return $trans;
	}

	public function get_technical($id)
	{
		$this->db->select('technical.id as tech_id, technical.branch_id as branch_id, technical.name as name, technical.start_date as start_date,  technical.end_date, technical.description as description, branches.name as branch_name, branches.id as branches_branch_id');
		$this->db->from('technical');
		$this->db->join('branches','technical.branch_id = branches.id');
		$this->db->where('technical.id', $id);
		$query = $this->db->get();

		return $query->row();
	}

	public function update_technical($id)
	{
		$start_date = date('Y-m-d', strtotime($this->input->post('start_date')));
		$end_date = date('Y-m-d', strtotime($this->input->post('end_date')));

		$data = array(
			'branch_id'   => $this->input->post('branch'),
			'name'        => $this->input->post('name'),
			'start_date'  => $start_date,
			'end_date'    => $end_date,
			'description' => $this->input->post('description'),
   		'trans_by'   	=> $this->session->userdata('username')
		);

		$this->db->where('id',$id);
		$query = $this->db->update('technical', $data);

		return $query;

	}

	public function delete_technical($id)
	{
		$this->db->where('id', $id);
		$query = $this->db->delete('technical');

		return $query;
	}

	public function add_transmittal()
	{
		$this->db->trans_start();

		$ip = $_SERVER['REMOTE_ADDR'];
		$date = date('Y-m-d');
				
		$data = array(
			'host_ip'				=> $ip,
			'encode_by'		 	=> $this->session->userdata('username'),
			'url'		  			=> '/purchase/add_item',
			'message_title'	=> 'Added transmittal_entry [date:'.date('Y-m-d').']',
		);
 
		$this->db->insert('logs', $data);

		$date = date('Y-m-d', strtotime($this->input->post('date')));
		
		$data = array(
			'corp'        => $this->input->post('corp'),
			'branch_id' => $this->input->post('branch'),
			'name'        => $this->input->post('name'),
			'date'        => $date,
			'description' => $this->input->post('description'),
   		'trans_by'   	=> $this->session->userdata('username')
		);

		$this->db->insert('transmittal', $data);

		$trans = $this->db->trans_complete();

		return $trans;
	}

	public function get_transmittal($id)
	{
		$this->db->select('transmittal.id as trans_id, transmittal.branch_id as branch_id, transmittal.corp as corp, transmittal.name as name,  transmittal.date, transmittal.description as description, branches.name as branch_name');
	 	$this->db->from('transmittal');
		$this->db->join('branches','transmittal.branch_id = branches.id');
		$this->db->where('transmittal.id', $id);
		$query =$this->db->get();

		return $query->row();
	}

	public function update_transmittal($id)
	{
		$date = date('Y-m-d', strtotime($this->input->post('date')));
		
		$data = array(
			'corp'        => $this->input->post('corp'),
			'branch_id' => $this->input->post('branch'),
			'name'        => $this->input->post('name'),
			'date'        => $date,
			'description' => $this->input->post('description'),
   		'trans_by'   	=> $this->session->userdata('username')
		);
		$this->db->where('id',$id);
		$query = $this->db->update('transmittal', $data);

		return $query;
	}

	public function delete_transmittal($id)
	{
		$this->db->where('id', $id);
		$query = $this->db->delete('transmittal');

		return $query;
	}

}