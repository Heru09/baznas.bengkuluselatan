<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mpendaftaran extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		// $this->load->model('m_admin');
		$this->load->database();
		$this->load->library('form_validation');
		$this->load->helper(array('form', 'url'));
	}

	public function index(){
		$data['content'] = 'mustahik/pendaftaran';
		$this->load->view('mustahik/tampilanmenu',$data);
		//$this->load->view('mustahik/pendaftaran');
	}

	// public function getpendaftaran()
	// {
	// 	$data = array ('success' => false, 'messages' => array());

	// 	$this->load->library('form_validation');
	// 	$this->form_validation->set_rules('nik', 'nik', 'trim|required|min_length[16]|max_length[50]|callback_nikdata_check');
	
	// 	$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

	// 	if($this->form_validation->run()){			
	// 			$data = array (					  
	// 				  'kk' => $this->input->post('kk'),
	// 				  'alamatlengkap' => $this->input->post('alamatlengkap'),
	// 				  'keldes' => $this->session->userdata('keldes'),
	// 				  'idkeldes' => $this->session->userdata('idkeldes'),
	// 				  'kec' => $this->session->userdata('kec'),
	// 				  'nama' => $this->input->post('nama'),
	// 				  'panggilan' => $this->input->post('panggilan'),
	// 				  'nik' => $this->input->post('nik'),
	// 				  'jk' => $this->input->post('jk'),
	// 				  'tempatlahir' => $this->input->post('tempatlahir'),
	// 				  'tanggallahir' => $this->input->post('tanggallahir'),
	// 				  'agama' => $this->input->post('agama'),
	// 				  'pekerjaan' => $this->input->post('pekerjaan'),
	// 				  'usulan' => $this->input->post('usulan'),
	// 				  'hp' => $this->input->post('hp'),
	// 				  'terdaftar' => date("Y-m-d"),
	// 				  'survey' => '0000-00-00',
	// 				  'disetujui' => '0000-00-00',						  
	// 				);
	// 			$this->m_mustahik->save_mustahik('mustahik',$data);
				
	// 		$data['success'] = true;

	// 	}else {
	// 		foreach ($_POST as $key => $value) {
	// 		 	$data['messages'][$key] = form_error($key);
	// 		}			
	//  }
	// 	echo json_encode($data);
	//}

	public function nikdata_check(){
		 // $this->form_validation->set_rules('nama', 'Nama', 'required');
		 // $this->form_validation->set_rules('panggilan', 'Panggilan', 'required');
		 // $this->form_validation->set_rules('nik', 'Nik', 'required');
		 // $this->form_validation->set_rules('jk', 'Jenis Kelamin', 'required');
		 // $this->form_validation->set_rules('tempatlahir', 'Tempat Lahir', 'required');
		 // $this->form_validation->set_rules('tanggallahir', 'Tanggal Lahir', 'required');
		 // $this->form_validation->set_rules('agama', 'Agama', 'required');
		 // $this->form_validation->set_rules('hp', 'No HP', 'required');
		 // $this->form_validation->set_rules('alamatlengkap', 'Alamat Lengkap', 'required'); 
   //          if($this->form_validation->run() == FALSE){
   //                  $data['content'] = 'mustahik/pendaftaran';
			// 		$this->load->view('mustahik/tampilanmenu',$data);
   //           }else{
   //                  echo "Kirim Post";
   //           }
    }
}
