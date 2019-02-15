<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldesbantuanmustahik extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		
		$this->load->model('MUserkeldesprofilmustahik');
	}

	public function index(){
		$data['content'] = 'user/keldes/bantuan';
		$this->load->view('user/keldes/tampilanmenu',$data);
	}

	function get_bantuan(){
        $nik = $_POST["getnik"];
        $getiduser = $_POST["getiduser"];
		echo $nik;
		echo $getiduser;
	}
}
