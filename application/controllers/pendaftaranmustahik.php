<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pendaftaranmustahik extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		
		$this->load->model('dbcalonmustahik');
	}

	public function index(){
		$data['content'] = 'user/keldes/pendaftaranmustahik';
        $this->load->view('user/keldes/tampilanmenu',$data);
	}

	function get_data_calonmustahik(){
		$iduser = $this->session->userdata('iduser');
		$namauser = $this->session->userdata('namauser');

		$list = $this->dbcalonmustahik->get_datatables($iduser);
		$data = array();
		$no = $this->input->post('start');
		foreach ($list as $field){
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = '<a href="userkeldesprofilmustahik?nik='.$field->nik.'&&iduser='.$iduser.'&&nama='.$field->nama.'">'.$field->nama.'</a>';
			$row[] = $field->nik;
			$row[] = $field->jk;
			$row[] = $field->tempatlahir;
			$row[] = $field->status;	
			$row[] = '<a href="userkeldesprofilmustahik?nik='.$field->nik.'&&iduser='.$iduser.'&&nama='.$field->nama.'">
			<button type="button" id="disetujui" class="btn btn-success btn-flat btn-addon btn-xs m-b-10">'.$field->terdaftar.'</button>
			</a>
			<button type="button" id="menunggu" class="btn btn-danger btn-flat btn-addon btn-xs m-b-10">Menunggu</button>
			';

			$data[] = $row;
		}

		$output = array(
            "draw" => $this->input->post('draw'),
            "recordsTotal" => $this->dbcalonmustahik->count_all(),
            "recordsFiltered" => $this->dbcalonmustahik->count_filtered($iduser),
            "data" => $data,
        );
   
        echo json_encode($output);
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
