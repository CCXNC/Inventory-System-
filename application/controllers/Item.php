<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Item extends CI_Controller 
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
	
	public function index()
	{
		// Get record count
	 	$this->load->library('pagination');

	 	$total_rows = $this->db->count_all('items');
	 	$limit = 5;

	 	$start = $this->uri->segment(3);

	 	$this->db->order_by('name','asc');
	 	$this->db->limit($limit, $start);
	 	$keyword    =   $this->input->post('keyword');
	 	$this->db->like('name', $keyword);
	  $query = $this->db->get('items');
	  $data['items'] = $query->result();

	  $config['base_url']   = 'http://it2-pc/inventorysystem/item/index';
	  $config['total_rows'] = $total_rows;
	  $config['per_page']   = $limit;

	  $config['full_tag_open']    = "<ul class='pagination'>";
		$config['full_tag_close']   = "</ul>";
		$config['num_tag_open']     = "<li>";
		$config['num_tag_close']    = "</li>";
		$config['cur_tag_open']     = "<li class='disabled'><li class='active'><a href='#'>";
		$config['cur_tag_close']    = "<span class='sr-only'></span></a></li>";
		$config['next_tag_open']    = "<li>";
		$config['next_tagl_close']  = "</li>";
		$config['prev_tag_open']    = "<li>";
	  $config['prev_tagl_close']  = "</li>";
		$config['first_tag_open']   = "<li>";
		$config['first_tagl_close'] = "</li>";
		$config['last_tag_open']    = "<li>";
		$config['last_tagl_close']  = "</li>";

	  
	  $this->pagination->initialize($config);	
	  $data['main_content'] = 'item/index';
		$this->load->view('layouts/main', $data);		
	}

	public function add_item_form()
	{
		$this->form_validation->set_rules('code', 'CODE', 'required|trim');
		$this->form_validation->set_rules('name', 'NAME', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'item/add';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->item_model->add_item())
			{
				$this->session->set_flashdata('item_added','Item Successfully Added!');
				redirect('item/add_item_form');
			}
		}
	}

	public function edit_item($id)
	{
		$this->form_validation->set_rules('code', 'CODE', 'required|trim');
		$this->form_validation->set_rules('name', 'NAME', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['item'] = $this->item_model->get_item($id);
 			$data['main_content'] = 'item/edit';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->item_model->update_item($id))
			{
				$this->session->set_flashdata('item_updated','Item Successfully Updated!');
				redirect('item/index');
			}
		}
	}

	public function delete_item($id)
	{
		if($this->item_model->delete_item($id))
		{
			$this->session->set_flashdata('item_deleted','Item Successfully Deleted!');
			redirect('item/index');
		}
	}

}