<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldespendaftaran extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}

		$this->load->database();
		$this->load->library('form_validation');
		$this->load->helper(array('form', 'url'));
	}

	public function index(){
		$data['content'] = 'user/keldes/pendaftaran';
		$this->load->view('user/keldes/tampilanmenu',$data);
		
    }
}
