<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Adminbaznasberanda extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->model('m_admin');
		$this->load->database();
	}
	public function index()
	{
		$data['content'] = 'admin/baznas/beranda';
		$data['email'] = $this->session->userdata('email');
		$this->load->view('admin/baznas/tampilanmenu',$data);
	}

	public function laporan()
	{
		$data['content'] = 'admin/baznas/laporan';
		$data["datamustahik"] = $this->m_admin->getmustahik();
		$this->load->view('admin/baznas/tampilanmenu',$data);
	}

	/*function get_data_mustahik()
	{
		$this->load->model('m_admin');
		$list = $this->m_admin->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $field) {
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $field->nik;
			$row[] = $field->nama;
			$row[] = $field->alamat;
			$row[] = $field->kec;
			$row[] = $field->terdaftar;
			$row[] = $field->survey;
			$row[] = $field->disetujui;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->m_admin->count_all(),
			"recordsFiltered" => $this->m_admin->count_filtered(),
			"data" => $data,
		);
		//output dalam format JSON
		echo json_encode($output);
	}*/
}
