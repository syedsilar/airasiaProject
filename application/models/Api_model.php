<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class api_model extends CI_Model {

	public function fetch_all()
	{
		$this->load->database();
		$array = array('status' => 1);
		$this->db->order_by('id', 'DESC');
		$this->db->where($array);
		return $this->db->get('packages');
	}

	function insert_api($data){
		$this->load->database();
		$this->db->insert('packages', $data);
	}

	function edit_api($data, $id){

		$this->load->database();
		$this->db->set($data);
		$this->db->where('id', $id);
		$this->db->update('packages');
	}

}
