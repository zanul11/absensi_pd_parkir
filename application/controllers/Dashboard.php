<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
		parent:: __construct();

		$this->load->model("DashModel");				
	}
	public function index()
	{
		
		$data['act_menu'] = 'Dashboard';
		$data['respon'] = null;	
		$data['akses'] = $this->session->userdata('menu');
		$data['data_rekap'] = $this->DashModel->getDataRekap();
		$data['data_bar'] = $this->DashModel->getDataRekapBarChart(); 	

		$this->load->view('header_layout',$data);
		$this->load->view('menu_layout');
		$this->load->view('dash_layout');
		$this->load->view('footer_layout');
	}

}
