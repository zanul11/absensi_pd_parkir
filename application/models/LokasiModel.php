<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LokasiModel extends CI_Model {
	public function __construct(){
		parent:: __construct();
    }	
    public function getData()
	{
		$result = $this->db->query("SELECT * from lokasi")->result_array();
		return $result;
	}

    public function SaveData($kd,$nama)
	{
		$this->db->trans_begin();
		$this->db->query("INSERT INTO lokasi (keterangan, koordinat) values(?,?)",array($kd,$nama));
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
		$this->db->query("DELETE from lokasi where id_lokasi=?",array($id));
		if($this->db->trans_status()){
			$this->db->trans_commit();
			return true;
		}else{
			$this->db->trans_rollback();
			return false;
		}
    }
    public function UpdateData($id,$ket,$kor)
	{
		$this->db->trans_begin();
		$this->db->query("UPDATE lokasi set keterangan=?, koordinat = ? where id_lokasi=?",array($ket,$kor,$id));
		if($this->db->trans_status()){
			$this->db->trans_commit();
			return true;
		}else{
			$this->db->trans_rollback();
			return false;
		}
    }	
    public function getDataById($id)
	{
		$result = $this->db->query("SELECT * from lokasi where id_lokasi=?",array($id))->row();
		return $result;
	}

}
