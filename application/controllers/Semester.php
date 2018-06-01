<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Semester extends CI_Controller {
	function __construct(){
		parent::__construct();
	}

	function index() {
		$data['isi'] = 'semester/index';
		$data['js'] = 'semester/index_js';
		$data['data']['semester'] = $this->db->get('semester')->row();

		$this->load->view('template/template', $data);
	}

	function aksi_ubah() {
		foreach ($this->input->post('data') as $key => $value) {
			$data[$key] = $value;
		}

		$this->db->truncate('detil_semester');
		$this->db->insert('detil_semester', $data);

		redirect(base_url());
	}

}