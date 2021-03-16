<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DashModel extends CI_Model{
	public function __construct(){
		parent :: __construct();	
	}
	
	public function getDataRekap()
	{
		$today = date('Y-m-d');
		
		$jml_peg = $this->db->query("SELECT count(nip) jml from pegawai")->row()->jml;
		$jml_absen = $this->db->query("SELECT count(nip) jml from absen_pegawai where DATE(tgl_absen)=?",array($today))->row()->jml;
		$jml_izin = $this->db->query("SELECT count(nip) jml from izin_pegawai where tgl_mulai=?",array($today))->row()->jml;
		$jml_telat = $this->db->query("SELECT count(nip) jml from absen_pegawai 
		WHERE DATE(tgl_absen)=? AND TIME(tgl_absen)>(SELECT jam_toleransi FROM konfigurasi)",array($today))->row()->jml;

		return array($jml_peg,$jml_absen,$jml_izin,$jml_telat);
	}

	public function getDataRekapBarChart()
	{

		$thn = date('Y');
		$bln = date('m');

		$array_izin = array();
		$array_sakit = array();
		$array_cuti = array();
		$array_telat = array();

		for($i=1;$i<=31;$i++){

			$tgl = date('Y-m-d',strtotime($thn.'-'.$bln.'-'.$i));
			
			$rs_izin = $this->db->query("SELECT COUNT(nip) jml FROM izin_pegawai WHERE tgl_mulai=? AND ket_absen='Izin' AND status=1",
			array($tgl))->row();
			array_push($array_izin,$rs_izin->jml);
		
			$rs_sakit = $this->db->query("SELECT COUNT(nip) jml FROM izin_pegawai WHERE tgl_mulai=? AND ket_absen='Sakit' AND status=1",
			array($tgl))->row();
			array_push($array_sakit,$rs_sakit->jml);

			$rs_cuti = $this->db->query("SELECT COUNT(nip) jml FROM izin_pegawai WHERE tgl_mulai=? AND ket_absen='Sakit' AND status=1",
			array($tgl))->row();
			array_push($array_cuti,$rs_cuti->jml);

			$rs_telat = $this->db->query("SELECT count(nip) jml from absen_pegawai WHERE 
			DATE(tgl_absen)=? AND TIME(tgl_absen)>(SELECT jam_toleransi FROM konfigurasi)",
			array($tgl))->row();	
			array_push($array_telat,$rs_telat->jml);

		}
			
		return array($array_izin,$array_sakit,$array_cuti,$array_telat);
	}

}

?>
