<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Purchase_model extends CI_Model
{
	public function purchase_item()
	{
		$this->db->trans_start();

		$ip = $_SERVER['REMOTE_ADDR'];
		$date = date('Y-m-d');
				
		$data = array(
			'host_ip'				=> $ip,
			'encode_by'		 	=> $this->session->userdata('username'),
			'url'		  			=> '/purchase/add_item',
			'message_title'	=> 'Added purchase_entry [date:'.date('Y-m-d').']',
		);
 
		$this->db->insert('logs', $data);
		
		$date = date('Y-m-d', strtotime($this->input->post('date')));

		$data = array(
			'trans_id'    => $this->input->post('trans_id'),
			'date' 				=> $date,
			'item_id' 	=> $this->input->post('item'),
			'description' => $this->input->post('description'),
			'price'			  => $this->input->post('price'),
			'trans_by'    => $this->session->userdata('username')
		);

		$this->db->insert('temp_items', $data);

		$trans = $this->db->trans_complete();

		return $trans;
	}

	public function get_purchase_items()
	{
		$date = date('Y-m-d');
		$this->db->where('date', $date);
		
		$this->db->select('items.code as item_code, items.name as item_name, temp_items.description as description, temp_items.price as price, temp_items.id, items.id as item_id');
		$this->db->from('temp_items');
		$this->db->join('items', 'temp_items.item_id = items.id');
		$query = $this->db->get();

		return $query->result();
	}

	public function delete_item($id)
	{
		$this->db->where('id', $id);

		$query = $this->db->delete('temp_items');

		return $query;
	}

	public function transaction()
	{
		$this->db->trans_start();

		//INSERT TO TRANSACTIONS
		$trans_date = date('Y-m-d', strtotime($this->input->post('date')));

		$data = array(
			'branch_id'  => $this->input->post('branch'),
			'date'       => $trans_date,
			'total'      => $this->input->post('total'),
			'trans_by'   => $this->session->userdata('username')
		); 

		$this->db->insert('transaction', $data);

		//INSERT TO PURCHASE ITEMS
		$trans_by  = $this->session->userdata('username');
		$trans_id	 = $this->input->post('trans_id');
    $item_name = $this->input->post('item_name');
    $item_code = $this->input->post('item_code');
    $desc			 = $this->input->post('description');
    $price		 = $this->input->post('price');
		$date			 = date('Y-m-d', strtotime($this->input->post('date')));

		for($i = 0; $i <= count($item_name) - 1; $i++)
		{
			$purchase_item_data = array(
				'trans_by'    => $trans_by,
				'trans_id'  => $trans_id,
				'date' 				=> $date,
				'item_name' 	=> $item_name[$i], 
				'item_code'   => $item_code[$i],
				'description' => $desc[$i],
				'price'			  => $price[$i],
			);

			$this->db->insert('purchase_items', $purchase_item_data);
		}
		//DELETE TO TEMPORARY ITEMS
		$date = date('Y-m-d');
		$this->db->where('date', $date);

		$this->db->delete('temp_items');

		$trans = $this->db->trans_complete();

		return $trans;
	}


}