<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mmustahik extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}	
	}

	public function index(){
		$data['content'] = 'mustahik/bantuan';
		$this->load->view('mustahik/tampilanmenu',$data);
	}
}
