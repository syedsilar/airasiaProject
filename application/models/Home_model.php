<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class home_model extends CI_Model {

	public function fetch_all()
	{
		$this->load->database();
		$array = array('status' => 1);
		$this->db->order_by('id', 'DESC');
		$this->db->where($array);
		return $this->db->get('packages');
	}

}
