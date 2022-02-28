<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class userkeldesgurumengajidetail extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->database();
	}
	public function index()
	{
		$data['content'] = 'user/keldes/gurumengajidetail';
		$this->load->view('user/keldes/tampilanmenu',$data);
	}
}
