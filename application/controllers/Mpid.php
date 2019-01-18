<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mpid extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function index()
	{
		$data['content'] = 'mustahik/epid';
		$this->load->view('mustahik/tampilanmenu',$data);
	}
}
