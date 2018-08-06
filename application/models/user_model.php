<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model 
{

	public function login($username,$password)
	{
		$enc_password = md5($password);

		$this->db->where('password',$enc_password);
		$this->db->where('username', $username);

		$result = $this->db->get('user');

		if($result->num_rows() == 1)
		{
			return $result->row();
		}
		else
		{
			return FALSE;
		}
	}

}