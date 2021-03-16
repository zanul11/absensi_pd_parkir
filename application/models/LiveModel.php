<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LiveModel extends CI_Model {
	public function __construct(){
		parent:: __construct();
	}



	public function getDataLocation()
	{
		$qry = $this->db->query("SELECT a.nip,a.nm_pegawai,a.last_location,
		IFNULL((SELECT ket_status FROM timeline WHERE nip=a.nip ORDER BY tgl desc LIMIT 1),'') last_status from pegawai a WHERE last_location is not null");

		return $qry->result_array();
	}
	public function getDataPegawai()
	{
		return $this->db->query("SELECT nip, nm_pegawai FROM pegawai")->result_array();
	}

	public function getDataById($id, $tgl)
	{
		return $this->db->query("SELECT l.nip, p.nm_pegawai, l.location as last_location , '' as last_status FROM log_location l JOIN pegawai p ON l.nip = p.nip  WHERE l.nip = ?  AND DATE(l.tgl) =  ? ", array($id,$tgl))->result_array();
	}
}
