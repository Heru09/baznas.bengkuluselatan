<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class userkeldesbantuan extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('email')){
			redirect('login');
		}
		$this->load->helper(array('form', 'url'));
		$this->load->model('m_mustahik','', TRUE);
	}	
}
