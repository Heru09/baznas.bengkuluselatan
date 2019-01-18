<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{
		$this->load->view('login');
	}

	public function getlogin()
	{
		
		$email = $this->input->post('email');
		$password = $this->input->post('password');
		$this->db->where('email',$email);
		$this->db->where('password',$password);
		$cek = $this->db->get('user');
		if($cek->num_rows() == 1 ){
			foreach ($cek->result() as $data) {
				$sess_data['email'] = $data->email;
				$sess_data['password']	 = $data->password;
				$sess_data['kec']	 	 = $data->kec;
				$sess_data['keldes']	 = $data->keldes;
				$sess_data['idkeldes']	 = $data->idkeldes;
				$sess_data['status']	 = $data->status;
				$this->session->set_userdata($sess_data);
				if($sess_data['status'] == 1){
					redirect('admadmin');
				}elseif ($sess_data['status'] == 0) {
					redirect('mcalonmustahik');
				}
			}
			
		}else{
			$this->session->set_flashdata('pesan', 'USERNAME DAN PASSWORD SALAH');
			redirect('login');
		}

	}

	function keluar(){
		$this->session->sess_destroy();
		redirect('login');
	}
}
