<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admadminrsmu extends CI_Controller {

	public function index()
	{
		$data['content'] = 'admin/rsmu/beranda';
		$this->load->view('admin/rsmu/tampilanmenu',$data);
	}
}
