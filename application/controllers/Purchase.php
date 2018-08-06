<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Purchase extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		
		if($this->session->userdata('logged_in') == FALSE)
		{
			$this->session->set_flashdata('no_access', 'Sorry, you are not logged in');
			
			redirect('user/index');
		}
		
	}

	public function add_item()
	{
		$this->form_validation->set_rules('item' , 'Item' , 'required|trim');
		$this->form_validation->set_rules('description' , 'Description' , 'required|trim');
		$this->form_validation->set_rules('price' , 'Price' , 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['tran'] = $this->report_model->get_transid();
			$data['items'] = $this->item_model->get_items();
			$data['purchase_items'] = $this->purchase_model->get_purchase_items();
			$data['main_content'] = 'purchase/add_item';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->purchase_model->purchase_item())
			{
				redirect('purchase/add_item');
			}
		}
		
	}

	public function add_transaction()
	{
		$this->form_validation->set_rules('branch' , 'Branch' , 'required|trim');
		$this->form_validation->set_rules('total' , 'Total' , 'required|trim');
		$this->form_validation->set_rules('date' , 'Date' , 'required|trim');
		$this->form_validation->set_rules('trans_id' , 'Trans ID' , 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['tran'] = $this->report_model->get_transid();
			$data['branches'] = $this->branch_model->get_branches();
			$data['purchase_items'] = $this->purchase_model->get_purchase_items();
			$data['main_content'] = 'purchase/add_transaction';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->purchase_model->transaction())
			{
				redirect('reports/index_transaction');
			}
		}
	}	

	public function delete_item($id)
	{
		if($this->purchase_model->delete_item($id))
		{
			redirect('purchase/add_item');
		}
	}

}