<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HakAkses extends CI_Controller {
	public function __construct(){
		parent:: __construct();	
		$this->load->model('HakAksesModel');

	}

	public function index()
	{
		if($this->cekmenu->user_menu($this->session->userdata('cuser'),'HakAkses')){

			$data['act_menu'] = 'Setup';
			$data['respon'] = null;
			$resp = $this->session->flashdata('respon');
			if($resp)
				$data['respon'] = $resp;
			
			$data['akses'] = $this->session->userdata('menu');

			$data['data_table'] = $this->HakAksesModel->getData();
			$this->load->view('header_layout',$data);
			$this->load->view('menu_layout');
			$this->load->view('hakakses/hakakses_layout');
			$this->load->view('footer_layout');
		}else{
			redirect(base_url('Login/SignOut'));
		}

	}
	public function AddPage()
	{
		if($this->cekmenu->user_menu($this->session->userdata('cuser'),'HakAkses')){


			$data['data_table'] = null;
			$data['data_pegawai'] = $this->HakAksesModel->getDataPegawaiNotInUser();
			$data['data_menu'] = $this->HakAksesModel->getDataMenu();
			$data['data_akses'] = array();

			$data['act_menu'] = 'Setup';
			$data['caption'] = "Tambah";
			$data['akses'] = $this->session->userdata('menu');
			$data['action'] = 'SaveData';

			$this->load->view('header_layout',$data);
			$this->load->view('menu_layout');
			$this->load->view('hakakses/hakakses_add');
			$this->load->view('footer_layout');
		}else{
			redirect(base_url('Login/SignOut'));
		}

	}

	public function EditPage($id)
	{
		if($this->cekmenu->user_menu($this->session->userdata('cuser'),'HakAkses')){


			
			$data['data_pegawai'] = $this->HakAksesModel->getDataPegawaiAll();
			$data['data_menu'] = $this->HakAksesModel->getDataMenu();

			$data['data_table'] = (array)$this->HakAksesModel->getDataById($id);
			$data['data_akses'] = $this->HakAksesModel->getDataAksesById($id);

			$data['act_menu'] = 'Setup';
			$data['caption'] = "Tambah";
			$data['akses'] = $this->session->userdata('menu');
			$data['action'] = 'UpdateData';

			$this->load->view('header_layout',$data);
			$this->load->view('menu_layout');
			$this->load->view('hakakses/hakakses_add');
			$this->load->view('footer_layout');
		}else{
			redirect(base_url('Login/SignOut'));
		}

	}

	public function SaveData()
	{

		$nik = $this->input->post('pegawai');
		$cuser = $this->input->post('cuser');
		$cpass = $this->input->post('cpass');
		$akses = $this->input->post('menu');


		$result = $this->HakAksesModel->SaveData($nik,$cuser,$cpass,$akses);
		if($result){			

			$this->session->set_flashdata('respon',array("msg"=>"Tambah data berhasil"));
		}else{

			$this->session->set_flashdata('respon',array("msg"=>"Tambah data gagal"));
					
		}
		redirect(base_url().'HakAkses');	
	}

	public function UpdateData()
	{

		$nik = $this->input->post('id');
		$cuser = $this->input->post('cuser');
		$cpass = $this->input->post('cpass');
		$akses = $this->input->post('menu'); 


		$result = $this->HakAksesModel->UpdateData($nik,$cuser,$cpass,$akses);
		if($result){			

			$this->session->set_flashdata('respon',array("msg"=>"Tambah data berhasil"));
		}else{

			$this->session->set_flashdata('respon',array("msg"=>"Tambah data gagal"));
					
		}
		redirect(base_url().'HakAkses');	
	}


	public function DeleteData($id)
	{

		$result = $this->HakAksesModel->DeleteData($id);
		if($result){
			$this->session->set_flashdata('respon',array("msg"=>"Delete data berhasil"));
		}else{
			$this->session->set_flashdata('respon',array("msg"=>"Delete data Gagal"));

		}
		redirect(base_url().'HakAkses');
	}		

}
