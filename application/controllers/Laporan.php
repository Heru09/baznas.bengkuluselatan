<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class laporan extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function index()
	{
		$data['user']=  $this->db->get('calonmustahik');
		$this->load->view('laporan', $data);
	}

	public function running()
	{
		$this->db->select('*');
		$this->db->from('mustahik');
		$this->db->join('calonmustahik', 'calonmustahi.nik = mustahik.nik', 'right');
		$data['mustahik']=  $this->db->get();
		$this->load->view('running', $data);
	}

}
