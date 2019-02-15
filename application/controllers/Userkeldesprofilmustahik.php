<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldesprofilmustahik extends CI_Controller {

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

	function get_profile(){

		$getnik = $_POST["getnik"];
		$getiduser = $_POST["getiduser"];

		$data = $this->MUserkeldesprofilmustahik->get_profile($getnik, $getiduser); 
		foreach ($data as $row){
			$profile['kk'] = $row->kk; 
			$profile['nama'] = $row->nama; 
			$profile['namapanggilan'] = $row->namapanggilan; 
			$profile['nik'] = $row->nik; 
			$profile['jk'] = $row->jk; 
			$profile['tempatlahir'] = $row->tempatlahir; 
			$profile['tanggallahir'] = $row->tanggallahir; 
			$profile['agama'] = $row->agama; 
			$profile['hp'] = $row->hp; 
			$profile['alamatlengkap'] = $row->alamatlengkap; 
			$profile['terdaftar'] = $row->terdaftar;  
		}
		echo json_encode($profile);  
	}
}
