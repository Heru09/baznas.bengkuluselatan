<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userdata extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function index()
	{
		$data['user']		 =  $this->db->get('user');
		$this->load->view('datauser', $data);
	}

}
