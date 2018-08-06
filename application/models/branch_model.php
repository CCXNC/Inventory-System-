<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Branch_model extends CI_Model 
{
	public function add_branch()
	{
		$data = array(
			'code' 		=> $this->input->post('code'),
			'name'	  => $this->input->post('name'),
			'address' => $this->input->post('address'), 
			'oic'     => $this->input->post('oic'), 
			'contact' => $this->input->post('contact'), 
		);
		$query = $this->db->insert('branches', $data);

		return $query;
	}

	public function get_branches()
	{
		$query = $this->db->get('branches');

		return $query->result();
	}

	public function delete_branch($id)
	{
		$this->db->where('id',$id);
		
		$query = $this->db->delete('branches');

		return $query;
	}

	public function get_branch($id)
	{
		$this->db->where('id',$id);

		$query = $this->db->get('branches');

		return $query->row();
	}

	public function update_branch($id)
	{
		$this->db->where('id',$id);
		$data = array(
			'code' 		=> $this->input->post('code'),
			'name'	  => $this->input->post('name'),
			'address' => $this->input->post('address'), 
			'oic'     => $this->input->post('oic'), 
			'contact' => $this->input->post('contact'), 
		);
		$query = $this->db->update('branches', $data) or die($this->db->_error_message());

		return $query;
	}
}