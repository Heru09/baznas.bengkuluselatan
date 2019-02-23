<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldesusulan extends CI_Controller {

	function __construct(){
        parent::__construct();
        if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->database();
	}
	public function index()
	{
		echo "Usulan";
	}
}
