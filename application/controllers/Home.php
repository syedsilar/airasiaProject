<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {


	public function __construct()
	   {
	        parent::__construct();
			$this->load->model('home_model');
			$this->load->library('form_validation');
	   }

	public function index()
		{
			$data = $this->home_model->fetch_all();
			$output['style'] = 'active1';
			$output['data'] = $data->result_array();
			$this->load->view('home', $output);
		}

}
