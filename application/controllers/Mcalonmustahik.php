<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mcalonmustahik extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->helper(array('form', 'url'));
		$this->load->model('m_calonmustahik', '', TRUE);
	}

	public function index(){
		$data['content'] = 'mustahik/beranda';
		$this->load->view('mustahik/tampilanmenu',$data);
	}

	function get_data_calonmustahik()
	{
		$idkeldes = $this->session->userdata('idkeldes');
		$keldes = $this->session->userdata('keldes');

		$list = $this->m_calonmustahik->get_datatables($idkeldes, $keldes);
		$data = array();
		$no = $this->input->post('start');
		foreach ($list as $field){
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $field->nama;
			$row[] = $field->nik;
			$row[] = $field->jk;
			$row[] = $field->tempatlahir;
			$row[] = $field->tanggallahir;	
			$row[] = '<a href="mmustahik?nik='.$field->nik.'&&nama='.$field->nama.'"><button type="button" id="disetujui" class="btn btn-danger btn-flat btn-addon btn-xs m-b-10"><i class="ti-settings"></i>'.$field->terdaftar.'</button></a>';

			$data[] = $row;
		}

		$output = array(
            "draw" => $this->input->post('draw'),
            "recordsTotal" => $this->m_calonmustahik->count_all(),
            "recordsFiltered" => $this->m_calonmustahik->count_filtered($idkeldes,$keldes),
            "data" => $data,
        );
   
        echo json_encode($output);
	}
}
