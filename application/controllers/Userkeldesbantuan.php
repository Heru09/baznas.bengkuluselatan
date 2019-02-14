<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Userkeldesbantuan extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->helper(array('form', 'url'));
		$this->load->model('m_mustahik','', TRUE);
	}

	function get_data_bantuan()
	{
 
		$nik = ($_POST['nik']);
		$iduser = ($_POST['iduser']);
		echo ($_POST['nik']);
		echo ($_POST['iduser']);
		echo "bantuan";
	}

	
}
