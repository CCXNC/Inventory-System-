<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Inventory_model extends CI_Model 
{
	public function get_branch_employee($branch_id)
	{
		$this->db->select('
			branches.name as branch_name, 
			tbl_employees.id as id, tbl_employees.name as name, 
			tbl_employees.corp as corp, tbl_employees.date as date, 
			tbl_employees.position as position
		');
		$this->db->from('tbl_employees');
		$this->db->join('branches','branches.id = tbl_employees.branch_id');
		$this->db->where('branches.id', $branch_id);
		$query = $this->db->get();

		return $query->result();
	}
	public function get_inventory_items($id)
	{
		$this->db->select('
			inventory_item.id as item_id,
			inventory_item.employee_id as id,
			inventory_item.item as item,
			inventory_item.description as description,
			inventory_item.date_arrived, 
			inventory_item.status as status 
		'); 
		$this->db->from('inventory_item');
		$this->db->where('inventory_item.employee_id', $id);
		$query = $this->db->get();
		return $query->result();
	}

	public function get_items($id)
	{
		$this->db->from('inventory_item');
		$this->db->where('id', $id);
		$query = $this->db->get();
		return $query->row();
	}

	public function update_item($id)
	{
		$this->db->where('id', $id);
		$data = array(
			'description'  => $this->input->post('description'),
			'date_arrived' => $this->input->post('date_arrived'),
			'status'       => $this->input->post('status')
		);
		$query = $this->db->update('inventory_item', $data);

		return $query;
	}

	public function update_user($id)
	{
		$date = date('Y-m-d', strtotime($this->input->post('date')));

		$this->db->where('id', $id);
		$data = array(
			'corp'     => $this->input->post('corp'),
			'name'     => $this->input->post('name'),
			'position' => $this->input->post('position'),
			'date' 		 => $date
		);

		$query = $this->db->update('tbl_employees', $data);

		return $query;
	}

	public function get_name($id)
	{
		$this->db->select('
			tbl_employees.id as id,
			tbl_employees.name as name,
			tbl_employees.position as position,
			tbl_employees.corp as corp,
			tbl_employees.date as date,
			branches.name as branch_name,
			branches.id as branch_id
		');
		$this->db->from('tbl_employees');
		$this->db->join('branches', 'branches.id = tbl_employees.branch_id');
		$this->db->where('tbl_employees.id', $id);
		$query = $this->db->get();

		return $query->row();
	}
	public function add_user_and_items()
	{
		$this->db->trans_start();
		$name = $this->input->post('name');
		$branch = $this->input->post('branch');
		$corp = $this->input->post('corp');
		$position = $this->input->post('position');
		$date = date('Y-m-d', strtotime($this->input->post('date')));
		$item = $this->input->post('item');
		$status = $this->input->post('status');
		$date_arrived = $this->input->post('date_arrived');
		$description = $this->input->post('description');

		$data = array(
			'name' 			=> $name,
			'branch_id' => $branch,
			'corp' 			=> $corp,
			'position' 	=> $position,
			'date'			=> $date
		);

		$this->db->insert('tbl_employees', $data);

		$this->db->select('id,branch_id');
		$this->db->order_by('id', 'DESC');
		$query = $this->db->get('tbl_employees');
		$emp_id = $query->row()->id;
		$bran_id = $query->row()->branch_id;

		$data = array(
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item'         => $item,
				'description'  => $description,
				'date_arrived' => $date_arrived,
				'status'       => $status
			),
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item' 				 => $this->input->post('item2'),
				'description'  => $this->input->post('description2'),
				'date_arrived' =>	$this->input->post('date_arrived2'),
				'status'       => $this->input->post('status2')
			),
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item' 				 => $this->input->post('item3'),
				'description'  => $this->input->post('description3'),
				'date_arrived' =>	$this->input->post('date_arrived3'),
				'status'       => $this->input->post('status3')
			),
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item' 				 => $this->input->post('item4'),
				'description'  => $this->input->post('description4'),
				'date_arrived' =>	$this->input->post('date_arrived4'),
				'status'       => $this->input->post('status4')
			),
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item' 				 => $this->input->post('item5'),
				'description'  => $this->input->post('description5'),
				'date_arrived' =>	$this->input->post('date_arrived5'),
				'status'       => $this->input->post('status5')
			),
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item' 				 => $this->input->post('item6'),
				'description'  => $this->input->post('description6'),
				'date_arrived' =>	$this->input->post('date_arrived6'),
				'status'       => $this->input->post('status6')
			),
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item' 				 => $this->input->post('item7'),
				'description'  => $this->input->post('description7'),
				'date_arrived' =>	$this->input->post('date_arrived7'),
				'status'       => $this->input->post('status7')
			),
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item' 				 => $this->input->post('item8'),
				'description'  => $this->input->post('description8'),
				'date_arrived' =>	$this->input->post('date_arrived8'),
				'status'       => $this->input->post('status8')
			),
			array (
				'employee_id'  => $emp_id,
				'branch_id'    => $bran_id,
				'item' 				 => $this->input->post('item9'),
				'description'  => $this->input->post('description9'),
				'date_arrived' =>	$this->input->post('date_arrived9'),
				'status'       => $this->input->post('status9')
			)
		);
		$this->db->insert_batch('inventory_item', $data); 

		$trans = $this->db->trans_complete(); 
		return $trans;
	}

	public function delete_user_and_items($id)
	{
		$this->db->trans_start();

		$this->db->where('id', $id);
		$this->db->delete('tbl_employees');
		
		$this->db->where('inventory_item.employee_id', $id);
		$this->db->delete('inventory_item');
		
		$trans = $this->db->trans_complete();

		return $trans;
	}

	public function add_item()
	{
		$data = array(
			'employee_id'  => $this->input->post('id'),
			'branch_id'    => $this->input->post('branch_id'),
			'item' 				 => $this->input->post('item'),
			'description'  => $this->input->post('description'),
			'date_arrived' => $this->input->post('date_arrived'),
			'status'       => $this->input->post('status')
		);

		$query = $this->db->insert('inventory_item', $data);
		
		return $query;
	}
}	