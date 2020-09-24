<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function index()
	{
		$output['style'] = 'active2';
		$this->load->view('admin', $output);
	}

	public function actionMulti(){

		if($this->input->post('data_action'));
		{
			$data_action = $this->input->post('data_action');
			$api_url = '';

			if($data_action== "Insert"){
				$api_url = base_url()."api/insert";
			}

			if($data_action== "Edit"){
				$api_url = base_url()."api/insert";
			}
			

			$form_data=array('name' => $this->input->post('name'),
				'price' => $this->input->post('price'),
				'duration' => $this->input->post('duration'),
				'description' => $this->input->post('description'),
				'data_action' => $this->input->post('data_action'),
				'edit_id' => $this->input->post('edit_id')

			);

			if($data_action== "Delete"){
				$api_url = base_url()."api/delete";
				$form_data=array('id' => $this->input->post('package_id'));
			}
			

			if($api_url != ''){
				$client = curl_init($api_url);
				curl_setopt($client, CURLOPT_POST, true);
				curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);
				curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
				$response = curl_exec($client);
				curl_close($client);
				echo $response;

			}
			

			

		}
	}

	public function action()
	{
		if($this->input->post('data_action'));
		{
			$data_action = $this->input->post('data_action');

			if($data_action == "fetch_all"){
				$api_url = base_url()."api";
				$client = curl_init($api_url);
				curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
				$response = curl_exec($client);
				curl_close($client);
				$result = json_decode($response);
				$output="";
				if(isset($result)){
					if(count($result) > 0){
						foreach ($result as $key => $value) {
							echo '<tr>
								<td id="name_'.$value->id.'" >'.$value->name.'</td>
								<td id="price_'.$value->id.'">'.$value->price.'</td>
								<td id="duration_'.$value->id.'">'.$value->duration.'</td>
								<td id="description_'.$value->id.'">'.$value->description.'</td>

								<td> 
								<input id="edit_button_'.$value->id.'"  onclick="return editPackage('.$value->id.');" name="edit_button" data-toggle="modal" data-target="#packageModal" type="button" class="btn btn-warning edit" value="Edit">
								</td>
								<td> 
								<button id="delete_button_'.$value->id.'"  onclick="return delPackage('.$value->id.');" name="delete_button" type="button" class="btn btn-danger delete">Delete</button>
								</td>

								</tr>';

						}
					}

				}else{
						echo '<tr>
								<td>
								  No data found.
								</td>
							</tr>';
				}
			}
		}
	}
}
