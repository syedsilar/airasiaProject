<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

	public function __construct()
   {
        parent::__construct();
		$this->load->model('api_model');
		$this->load->library('form_validation');
   }


	public function index(){

		$data = $this->api_model->fetch_all();
		echo json_encode($data->result_array());

	}

	public function delete(){
		$data  = array('status' => 4 );
		$id =  $this->input->post('id');
		$this->api_model->edit_api($data, $id);
		$output = array(
			'success' => true,
			'success_message' => 'Package has been deleted successfully!!!'
		);
		echo json_encode($output);
	}

	public function insert(){

		$this->form_validation->set_rules('name', 'Name of Package', 'required');
		$this->form_validation->set_rules('price', 'Price of Package', 'required');
		$this->form_validation->set_rules('duration', 'Duration of Package', 'required');
		$this->form_validation->set_rules('description', 'Description of Package', 'required');

		$data = array(
			'name' => $this->input->post('name'),
			'price' => $this->input->post('price'),
			'duration' => $this->input->post('duration'),
			'description' => $this->input->post('description'),
		);

		if($this->form_validation->run() && $this->input->post('data_action') == 'Insert'){
	     	$this->api_model->insert_api($data);
			$output = array(
				'success' => true,
				'success_message' => 'Package has been added successfully!!!'
			);
		}
		else if($this->form_validation->run() && $this->input->post('data_action') == 'Edit'){
			$id =  $this->input->post('edit_id');
	     	$this->api_model->edit_api($data, $id);
			$output = array(
				'success' => true,
				'success_message' => 'Package has been edited successfully!!!'
			);
		}
		else{
			$output = array(
				'error' => true,
				'name_error' =>  form_error('name'),
				'price_error' =>  form_error('price'),
				'duration_error' =>  form_error('duration'),
				'description_error' =>  form_error('description'),
			);
		}

		echo json_encode($output);

	}
}
