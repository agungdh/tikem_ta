<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {
	function __construct(){
		parent::__construct();
	}

	function index() {
		$array = range(0, 4);
		$array[] = 5;
		var_dump($array); die;

	}

}