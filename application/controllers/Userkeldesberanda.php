<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class userkeldesberanda extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->helper(array('form', 'url'));
		$this->load->model('muserkeldesberanda', '', TRUE);
	}

	public function index(){
		$data['content'] = 'user/keldes/beranda';
		$this->load->view('user/keldes/tampilanmenu',$data);
	}

	function get_data_calonmustahik(){
		$iduser = $this->session->userdata('iduser');
		$namauser = $this->session->userdata('namauser');

		$list = $this->muserkeldesberanda->get_datatables($iduser);
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
			$row[] = $field->tanggallahir;	
			$row[] = $field->bantuan;
			// $row[] = '<a href="userkeldesprofilmustahik?nik='.$field->nik.'&&iduser='.$iduser.'&&nama='.$field->nama.'"><button type="button" id="disetujui" class="btn btn-danger btn-flat btn-addon btn-xs m-b-10"><i class="ti-settings"></i>'.$field->bantuan.'</button></a>';

			$data[] = $row;
		}

		$output = array(
            "draw" => $this->input->post('draw'),
            "recordsTotal" => $this->muserkeldesberanda->count_all(),
            "recordsFiltered" => $this->muserkeldesberanda->count_filtered($iduser),
            "data" => $data,
        );
   
        echo json_encode($output);
	} 
}
