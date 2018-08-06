<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Item_model extends CI_Model
{
	public function add_item()
	{
		$data = array(
			'code' => $this->input->post('code'),
			'name' => $this->input->post('name')
		);

		$query = $this->db->insert('items', $data) or die($this->db->_error_message());

		return $query;
	}

	public function get_items()
	{
		$query = $this->db->get('items') or die($this->db->_error_message());

		return $query->result();
	}

	public function get_item($id)
	{
		$this->db->where('id',$id);

		$query = $this->db->get('items') or die($this->db->_error_message());

		return $query->row();
	}

	public function update_item($id)
	{
		$this->db->where('id',$id);

		$data = array(
			'code' => $this->input->post('code'),
			'name' => $this->input->post('name')
		);

		$query = $this->db->update('items',$data) or die($this->_error_message());

		return $query;
	}

	public function delete_item($id)
	{
		$this->db->where('id',$id);

		$query = $this->db->delete('items');

		return $query;
	}
}