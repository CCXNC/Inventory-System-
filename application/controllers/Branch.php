<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Branch extends CI_Controller 
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

	public function dashboard()
	{
			// Get record count
	 	$this->load->library('pagination');

	 	$total_rows = $this->db->count_all('logs');
	 	$limit = 7;

	 	$start = $this->uri->segment(3);

	 	$this->db->order_by('id','desc');
	 	$this->db->limit($limit, $start);
	 //	$keyword    =   $this->input->post('keyword');
	 	//$this->db->like('name', $keyword);
	  $query = $this->db->get('logs');
	  $data['dashboards'] = $query->result();

	  $config['base_url']   = 'http://localhost/inventorysystem/branch/dashboard';
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
		$data['main_content'] = 'dashboard';
		$this->load->view('layouts/main', $data);
	}

	public function index()
	{
		// Get record count
	 	$this->load->library('pagination');

	 	$total_rows = $this->db->count_all('branches');
	 	$limit = 5;

	 	$start = $this->uri->segment(3);

	 	$this->db->order_by('name','asc');
	 	$this->db->limit($limit, $start);
	 	$keyword    =   $this->input->post('keyword');
	 	$this->db->like('name', $keyword);
	  $query = $this->db->get('branches');
	  $data['branches'] = $query->result();

	  $config['base_url']   = 'http://it2-pc/inventorysystem/branch/index';
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
	  $data['main_content'] = 'branch/index';
		$this->load->view('layouts/main', $data);		
	}

	public function add_branch_form()
	{
		$this->form_validation->set_rules('code','Code','required|trim');
		$this->form_validation->set_rules('name','Name','required|trim');
		$this->form_validation->set_rules('address','Adress','required|trim');
		$this->form_validation->set_rules('oic','Oic','required|trim');
		$this->form_validation->set_rules('contact','Contact','required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'branch/add';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->branch_model->add_branch())
			{
				$this->session->set_flashdata('branch_added','Branch Successfully Added!');
				redirect('branch/add_branch_form');
			}
		}
	}

	public function delete_branch($id)
	{
		if($this->branch_model->delete_branch($id))
		{
			$this->session->set_flashdata('branch_deleted','Branch Successfully Deleted!');
			redirect('branch/index');
		}
	}

	public function edit_branch($id)
	{
		$this->form_validation->set_rules('code','Code','required|trim');
		$this->form_validation->set_rules('name','Name','required|trim');
		$this->form_validation->set_rules('address','Adress','required|trim');
		$this->form_validation->set_rules('oic','Oic','required|trim');
		$this->form_validation->set_rules('contact','Contact','required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['branch'] = $this->branch_model->get_branch($id);
			$data['main_content'] = 'branch/edit';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->branch_model->update_branch($id))
			{
				$this->session->set_flashdata('branch_updated','Branch Successfully Updated!');
				redirect('branch/index');
			}
		}
	}
	
	
}