<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldesmpid extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function index()
	{
		$data['content'] = 'user/keldes/epid';
		$this->load->view('user/keldes/tampilanmenu',$data);
	}
}
