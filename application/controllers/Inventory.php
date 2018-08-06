<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Inventory extends CI_Controller 
{
	public function index_inventory()
	{
		$data['main_content'] = 'inventory/index';
		$data['branches'] = $this->branch_model->get_branches();
		$this->load->view('layouts/main', $data);
	}

	public function view_branch_users()
	{
		if($_POST)
		{
			$this->input->post('branch');
			$this->session->set_userdata('branch', $this->input->post('branch'));
			//$this->session->set_flashdata('branch_name', "Activate Branch " .$branch. "" );
		}
		 $data['main_content'] = 'inventory/view';
		 $data['employees'] = $this->inventory_model->get_branch_employee($this->session->userdata('branch'));
		 $this->load->view('layouts/main', $data);
	}

	// ADD USER / EMPLOYEE
	public function add_users_and_item()
	{
		$this->form_validation->set_rules('name','Name','trim|required');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'inventory/add';
			$data['branches'] = $this->branch_model->get_branches();
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->inventory_model->add_user_and_items())
			{
				$this->session->set_flashdata('add_msg', 'Inventory Successfully Added!');
				redirect('inventory/add_users_and_item');
			}
		}
		
	}

	// EDIT USER / EMPLOYEE
	public function edit_user($id)
	{
		$this->form_validation->set_rules('name', 'Description', 'trim|required');
		$this->form_validation->set_rules('position', 'Date Arrived', 'trim|required');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'inventory/edit_user';
		 	$data['employee'] = $this->inventory_model->get_name($id);
		 	$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->inventory_model->update_user($id))
			{
				$this->session->set_flashdata('user_updated', 'User Updated Successfully!');
				redirect('inventory/view_branch_users');
				
			}	
		}
	}

	// DELETE USER / EMPLOYEE
	public function delete_user_and_items($id)
	{
		if($this->inventory_model->delete_user_and_items($id))
		{
			$this->session->set_flashdata('user_deleted', 'User Deleted Successfully!');
			redirect('inventory/view_branch_users');
			
		}
	}

	// VIEW EMPLOYEE ITEMS
	public function get_inventory_items($id)
	{
		$data['main_content'] = 'inventory/view2';
	 	$data['employees'] = $this->inventory_model->get_inventory_items($id);
	 	$data['employee'] = $this->inventory_model->get_name($id);
		$this->load->view('layouts/main', $data);
	}

	// EDIT EMPLOYEE ITEMS
	public function edit_item($id)
	{
		$this->form_validation->set_rules('description', 'Description', 'trim|required');
		$this->form_validation->set_rules('date_arrived', 'Date Arrived', 'trim|required');
		$this->form_validation->set_rules('status', 'Status', 'trim|required');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'inventory/edit_item';
		 	$data['employee'] = $this->inventory_model->get_items($id);
		 	$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->inventory_model->update_item($id))
			{
				redirect('inventory/view_branch_users');
			}	
		}
	}

	public function add_item($id)
	{
		$this->form_validation->set_rules('item', 'Item', 'required|trim');
		$this->form_validation->set_rules('description', 'Description', 'required|trim');
		$this->form_validation->set_rules('date_arrived', 'Date Arrived', 'required|trim');
		$this->form_validation->set_rules('status', 'Status', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'inventory/add_item';
			$data['employee'] = $this->inventory_model->get_name($id);

			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->inventory_model->add_item())
			{
				$this->session->set_flashdata('add_msg', 'Item Successfully Added!');
				redirect('inventory/view_branch_users');
			}
		}
	
	}
}
