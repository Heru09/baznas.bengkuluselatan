<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mbantuan extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->helper(array('form', 'url'));
		$this->load->model('m_bantuan', '', TRUE);
	}

	function get_data_bantuan()
	{
		$nik = $this->input->post('nik');
		$list = $this->m_bantuan->get_datatables($nik);
		$data = array();
		$no = $this->input->post('start');
		foreach ($list as $field){
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $field->bantuan;
			$row[] = $field->satuan;
			$row[] = $field->rp;
			$row[] = $field->tgl;
			$row[] = $field->via;
			$row[] = $field->nik;
			$row[] = $field->ket;

			$data[] = $row;
		}

		$output = array(
            "draw" => $this->input->post('draw'),
            "recordsTotal" => $this->m_bantuan->count_all(),
            "recordsFiltered" => $this->m_bantuan->count_filtered($nik),
            "data" => $data,
        );
   
        echo json_encode($output);
	}
}
