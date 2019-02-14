<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldesprofilmustahik extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}	
	}

	public function index(){
		$data['content'] = 'user/keldes/bantuan';
		$this->load->view('user/keldes/tampilanmenu',$data);
	}
}
