<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HakAksesModel extends CI_Model {
	public function __construct(){
		parent:: __construct();
	}


	public function getData()
	{
		$result = $this->db->query("SELECT nip,nm_pegawai, username,password,
		IFNULL(GROUP_CONCAT(nm_menu SEPARATOR ' | '),'')  cMenu  from vw_hakakses group by nip ")->result_array();
		return $result;
	}

	public function getDataById($id)
	{
		$result = $this->db->query("SELECT * from user WHERE nip=?",array($id))->row();
		return $result;
	}

	public function getDataPegawaiNotInUser()
	{
		$result = $this->db->query("SELECT * from pegawai WHERE nip NOT IN (SELECT nip from user)")->result_array();
		return $result;
	}

	public function getDataPegawaiAll()
	{
		$result = $this->db->query("SELECT * from pegawai ")->result_array();
		return $result;
	}	
	public function getDataMenu()
	{
		$result = $this->db->query("SELECT * from menu Order by kd_menu ")->result_array();
		return $result;
	}	


	public function getDataAksesById($id)
	{
		$rs = $this->db->query("SELECT kd_menu from vw_hakakses where nip=? AND status=0",array($id))->result_array();
		$result = array();
		foreach($rs as $mn){
			array_push($result,$mn['kd_menu']);
		}
		return $result;
	}	

	public function SaveData($nip,$cuser,$cpass,$akses)
	{

		$this->db->trans_begin();
		
		$this->db->query("INSERT INTO user values (?,?,?)",array($nip,$cuser,$cpass));
		$parent = "-";
		foreach($akses as $mn){
			$stmt = $this->db->query("SELECT kd_parent from menu where kd_menu=?",array($mn))->row();
			if($parent!=$stmt->kd_parent){
				$this->db->query("INSERT INTO akses values (?,?)",array($cuser,$stmt->kd_parent));
				$parent = $stmt->kd_parent;
			}
			$this->db->query("INSERT INTO akses values (?,?)",array($cuser,$mn));
		}


		if($this->db->trans_status()){
			$this->db->trans_commit();
			return true;
		}else{
			$this->db->trans_rollback();
			return false;
		}
		
	}	
	
	public function UpdateData($nip,$cuser,$cpass,$akses)
	{

		$user_past = $this->db->query("SELECT username from user where nip=?",array($nip))->row()->username;
		$this->db->trans_begin();
		
		$this->db->query("UPDATE user SET username=?,password=? WHERE nip=?",array($cuser,$cpass,$nip));
		$this->db->query("DELETE FROM user WHERE username=?",array($user_past));
		$parent = "-";
		foreach($akses as $mn){
			$stmt = $this->db->query("SELECT kd_parent from menu where kd_menu=?",array($mn))->row();
			if($parent!=$stmt->kd_parent){
				$this->db->query("INSERT INTO akses values (?,?)",array($cuser,$stmt->kd_parent));
				$parent = $stmt->kd_parent;
			}
			$this->db->query("INSERT INTO akses values (?,?)",array($cuser,$mn));
		}

		if($this->db->trans_status()){
			$this->db->trans_commit();
			return true;
		}else{
			$this->db->trans_rollback();
			return false;
		}
		
	}
	
	public function DeleteData($id)
	{
		$this->db->trans_begin();
		$this->db->query("DELETE from user where username=?",array($id));
		$this->db->query("DELETE from akses where username=?",array($id));
		if($this->db->trans_status()){
			$this->db->trans_commit();
			return true;
		}else{
			$this->db->trans_rollback();
			return false;
		}
	}	

}
