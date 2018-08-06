<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Reports extends CI_Controller 
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
 
	public function index_transaction()
	{

		$this->load->library('pagination');

	 	$total_rows = $this->db->count_all('transaction');
	 	$limit = 5;

	 	$start = $this->uri->segment(3);

	 	$this->db->order_by('transaction.id','asc');
	 	$this->db->limit($limit, $start);
	 	$keyword = $this->input->post('keyword');
	 	$this->db->like('name', $keyword);
	 	$this->db->select('branches.code as branch_code, branches.name as branch_name, transaction.id as tran_id, transaction.date as tran_date, transaction.total as tran_total');
		$this->db->from('transaction');
		$this->db->join('branches', 'transaction.branch_id = branches.id');

	  $query = $this->db->get();
	  $data['trans'] = $query->result();

	  $config['base_url']   = 'http://it2-pc/inventorysystem/reports/index_transaction';
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
	 	$data['main_content'] = 'reports/transactions/index';
		$this->load->view('layouts/main', $data);	
	}

	public function view_transaction($id)
	{
		$data['trans'] = $this->report_model->get_items_and_trans($id);
		$data['trans_branch'] = $this->report_model->get_trans_branch($id);
		$data['trans_total'] = $this->report_model->get_trans_total($id);
		$data['main_content'] = 'reports/transactions/view';
		$this->load->view('layouts/main', $data);
	}

	public function delete_alltrans($id)
	{
		if($this->report_model->delete_alltransactions($id))
		{
			$this->session->set_flashdata('transaction_deleted','Transaction Successfully Deleted!');
			redirect('reports/index_transaction');
		}
	}

	public function index_technical()
	{
		// Get record count
	 	$this->load->library('pagination');

	 	$total_rows = $this->db->count_all('technical');
	 	$limit = 5;

	 	$start = $this->uri->segment(3);
	 	$this->db->select('technical.id as tech_id, technical.branch_id as branch_id, technical.name as name, technical.start_date as start_date,  technical.end_date, technical.description as description, branches.name as branch_name');
	 	$this->db->from('technical');
		$this->db->join('branches','technical.branch_id = branches.id');

	 	$this->db->order_by('technical.id','asc');
	 	$this->db->limit($limit, $start);
	 	$keyword    =   $this->input->post('keyword');
	 	$this->db->like('technical.id', $keyword);
	  $query = $this->db->get();
	  $data['technicals'] = $query->result();

	  $config['base_url']   = 'http://it2-pc/inventorysystem/reports/index_technical';
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
	  $data['main_content'] = 'reports/technical/index';
		$this->load->view('layouts/main', $data);		
	}


	public function add_technical_form()
	{
		$this->form_validation->set_rules('name', 'Name', 'required|trim');
		$this->form_validation->set_rules('branch', 'Branch', 'required|trim');
		$this->form_validation->set_rules('start_date', 'Start_date', 'required|trim');
		$this->form_validation->set_rules('end_date', 'End_date', 'required|trim');
		$this->form_validation->set_rules('description', 'Description', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['branches'] = $this->branch_model->get_branches();
			$data['main_content'] = 'reports/technical/add';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->report_model->add_technical())
			{
				$this->session->set_flashdata('tech_added', 'Successfully Inserted');
				redirect('reports/index_technical');
			}
		}
		
	}

	public function edit_technical($id)
	{
		$this->form_validation->set_rules('name', 'Name', 'required|trim');
		$this->form_validation->set_rules('branch', 'Branch', 'required|trim');
		$this->form_validation->set_rules('start_date', 'Start_date', 'required|trim');
		$this->form_validation->set_rules('end_date', 'End_date', 'required|trim');
		$this->form_validation->set_rules('description', 'Description', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['branches'] = $this->branch_model->get_branches();
			$data['tech'] = $this->report_model->get_technical($id);
			$data['main_content'] = 'reports/technical/edit';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->report_model->update_technical($id))
			{
				$this->session->set_flashdata('tech_updated', 'Successfully Updated!');
				redirect('reports/index_technical');
			}
		}
	}

	public function delete_technical($id)
	{
		if($this->report_model->delete_technical($id))
		{
			$this->session->set_flashdata('tech_deleted', 'Successfully Deleted!');
			redirect('reports/index_technical');
		}
	}

	public function index_transmittal()
	{
		// Get record count
	 	$this->load->library('pagination');

	 	$total_rows = $this->db->count_all('transmittal');
	 	$limit = 5;

	 	$start = $this->uri->segment(3);

	 	$this->db->select('transmittal.id as trans_id, transmittal.branch_id as branch_id, transmittal.name as name,  transmittal.date, transmittal.description as description, branches.name as branch_name');
	 	$this->db->from('transmittal');
		$this->db->join('branches','transmittal.branch_id = branches.id');

	 	$this->db->order_by('transmittal.id','asc');
	 	$this->db->limit($limit, $start);
	 	$keyword    =   $this->input->post('keyword');
	 	$this->db->like('transmittal.id', $keyword);
	  $query = $this->db->get();
	  $data['transmittal'] = $query->result();

	  $config['base_url']   = 'http://it2-pc/inventorysystem/reports/index_transmittal';
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
	  $data['main_content'] = 'reports/transmittal/index';
		$this->load->view('layouts/main', $data);		
	}

	public function add_transmittal()
	{
		$this->form_validation->set_rules('name', 'Name', 'required|trim');
		$this->form_validation->set_rules('branch', 'Branch', 'required|trim');
		$this->form_validation->set_rules('date', 'Start_date', 'required|trim');
		$this->form_validation->set_rules('description', 'Description', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['branches'] = $this->branch_model->get_branches();
			$data['main_content'] = 'reports/transmittal/add';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->report_model->add_transmittal())
			{
				$this->session->set_flashdata('trans_added', 'Successfully Inserted');
				redirect('reports/index_transmittal');
			}
		}
		
	}

	public function edit_transmittal($id)
	{
		$this->form_validation->set_rules('name', 'Name', 'required|trim');
		$this->form_validation->set_rules('branch', 'Branch', 'required|trim');
		$this->form_validation->set_rules('date', 'Start_date', 'required|trim');
		$this->form_validation->set_rules('description', 'Description', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['branches'] = $this->branch_model->get_branches();
			$data['trans'] = $this->report_model->get_transmittal($id);
			$data['main_content'] = 'reports/transmittal/edit';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->report_model->update_transmittal($id))
			{
				$this->session->set_flashdata('trans_updated', 'Successfully Updated!');
			redirect('reports/index_transmittal'); 
			}
		}


	}

	public function delete_transmittal($id)
	{
		if($this->report_model->delete_transmittal($id))
		{
			$this->session->set_flashdata('trans_deleted', 'Successfully Deleted!');
			redirect('reports/index_transmittal'); 
		}
	}

	public function print_transmittal($id)
	{
		$data['trans'] = $this->report_model->get_transmittal($id);
		//echo $data['trans']->corp;
		if($data['trans']->corp == 'NHFC')
		{
			$data['main_content'] = 'reports/transmittal/print';
			$this->load->view('layouts/main', $data);
		}	
		elseif($data['trans']->corp == 'GTLIC')
		{
			$data['main_content'] = 'reports/transmittal/print1';
			$this->load->view('layouts/main', $data);
		}
		
	}

}	