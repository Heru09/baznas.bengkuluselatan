<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldesgurumengaji extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->helper(array('form', 'url'));
		$this->load->model('MUserkeldesgetgurumengaji', '', TRUE);
	}

	public function index(){
		$data['content'] = 'user/keldes/gurumengaji';
		$this->load->view('user/keldes/tampilanmenu',$data);
	}

	function get_data_gurumengaji(){
		$iduser = $this->session->userdata('iduser');
		$namauser = $this->session->userdata('namauser');

		$list = $this->MUserkeldesgetgurumengaji->get_datatables($iduser);
		$data = array();
		$no = $this->input->post('start');
		foreach ($list as $field){
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = '<a href="Userkeldesgurumengajidetail?nik='.$field->nik.'&&iduser='.$iduser.'&&nama='.$field->nama.'">'.$field->nama.'</a>';
			$row[] = $field->nik;
			$row[] = $field->jk;
			$row[] = $field->tempatlahir;
			$row[] = '<a href='.$field->linklaporan.'>Laporan</a>';	
			$row[] = '<a href="Userkeldesgurumengajidetail?nik='.$field->nik.'&&iduser='.$iduser.'&&nama='.$field->nama.'"><button type="button" id="disetujui" class="btn btn-danger btn-flat btn-addon btn-xs m-b-10"><i class="ti-settings"></i>Detail</button></a>';

			$data[] = $row;
		}

		$output = array(
            "draw" => $this->input->post('draw'),
            "recordsTotal" => $this->MUserkeldesgetgurumengaji->count_all(),
            "recordsFiltered" => $this->MUserkeldesgetgurumengaji->count_filtered($iduser),
            "data" => $data,
        );
   
        echo json_encode($output);
	} 
}
