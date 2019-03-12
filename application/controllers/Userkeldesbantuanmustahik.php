<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldesbantuanmustahik extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		
		$this->load->model('MUserkeldesbantuanmustahik');
	}

	public function index(){
		$data['content'] = 'user/keldes/bantuan';
		$this->load->view('user/keldes/tampilanmenu',$data);
	}

	function get_bantuan(){
        $getnik = $_POST["getnik"];
		$getiduser = $_POST["getiduser"];
		$getdatabantuan = array();
		$getdatabantuan["data"] = array();
		$no = 1;
		 $data = $this->MUserkeldesbantuanmustahik->get_mustahik($getnik, $getiduser);
		 foreach ($data as $row){
			$mustahik['no'] = $no++; 
			$mustahik['bidang'] = $row->bidang;
			$mustahik['nik'] = $row->nik; 
			$mustahik['bantuan'] = $row->bantuan; 
			$mustahik['satuan'] = $row->satuan; 
			$mustahik['rp'] = $row->rp; 
			$mustahik['tgl'] = $row->tgl; 
			$mustahik['via'] = $row->via; 
			$mustahik['ket'] = $row->ket; 
			 array_push($getdatabantuan["data"], $mustahik);
			
		 }
		 echo json_encode($getdatabantuan);  
	}
}
