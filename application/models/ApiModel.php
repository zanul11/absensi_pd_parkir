<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ApiModel extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}



	public function doLogin($username, $password, $imei)

	{
		// $sql = "SELECT * FROM pegawai WHERE user_app=? AND pass_app=? AND imei=?";
		// $query = $this->db->query($sql,array($username,$password,$imei));
		$sql = "SELECT * FROM pegawai WHERE user_app=? AND pass_app=? ";
		$query = $this->db->query($sql, array($username, $password));
		return $query->result_array();
	}

	public function getKonfigurasi()

	{
		$sql = "SELECT * FROM konfigurasi";
		$query = $this->db->query($sql);
		return $query->result_array();
	}



	public function getPengumuman()

	{
		$sql = "SELECT *,date(tgl) as tgls FROM pengumuman order by tgl desc limit 5";
		$query = $this->db->query($sql);
		return $query->result_array();
	}


	public function saveTimeline($nip, $status, $loc)

	{
		$sql = "INSERT INTO timeline (tgl,nip,ket_status,location) VALUES (now(),?,?,?)";
		$query = $this->db->query($sql, array($nip, $status, $loc));
		return true;
	}

	public function updateLoc($nip, $loc)

	{
		$sql = "UPDATE pegawai SET last_location=? WHERE nip=?";
		$query = $this->db->query($sql, array($loc, $nip));
		return true;
	}

	public function updateInbox($nip)

	{
		$sql = "UPDATE inbox SET status=1 WHERE nip=?";
		$query = $this->db->query($sql, array($nip));
		return true;
	}


	public function updateToken($nip, $token)

	{
		$sql = "UPDATE pegawai SET token=? WHERE nip=?";
		$query = $this->db->query($sql, array($token, $nip));
		return true;
	}

	public function updateIzin($nip)

	{
		$sql = "UPDATE izin_pegawai SET status_notif=? WHERE nip=? AND status IN (1,2)";
		$query = $this->db->query($sql, array(1, $nip));
		return true;
	}


	public function getJenisAbsen()

	{
		$sql = "SELECT * FROM jenis_absen";
		$query = $this->db->query($sql);
		return $query->result_array();
	}

	public function getIzin($nip)

	{
		$sql = "SELECT * FROM izin_pegawai WHERE nip=?";
		$query = $this->db->query($sql, $nip);
		return $query->result_array();
	}

	public function getInboxCount($nip)

	{
		$sql = "SELECT COUNT(*) as jumlah FROM inbox WHERE nip=? AND STATUS=0";
		$query = $this->db->query($sql, $nip);
		return $query->result_array();
	}


	public function getInbox($nip)

	{
		$sql = "SELECT * FROM inbox WHERE nip=? order by tgl_inbox desc";
		$query = $this->db->query($sql, $nip);
		return $query->result_array();
	}

	public function getKonfigurasiShift($nip)

	{
		$sql = "SELECT IF(id_shift=1,(SELECT jam_masuk FROM shift WHERE id_shift=a.id_shift),(SELECT jam_toleransi FROM konfigurasi)) AS jam_masuk,IF(id_shift=1,(SELECT jam_toleransi FROM konfigurasi),(SELECT jam_toleransi FROM konfigurasi)) AS jam_toleransi,IF(id_shift=1,(SELECT min_to_update FROM konfigurasi),(SELECT min_to_update FROM konfigurasi)) AS min_to_update,l.koordinat AS area_kantor,IF(id_shift=1,(SELECT jam_keluar FROM shift WHERE id_shift=a.id_shift),(SELECT jam_pulang FROM konfigurasi)) AS jam_pulang  FROM pegawai a JOIN lokasi l ON a.id_lokasi=l.id_lokasi WHERE nip=?";
		$query = $this->db->query($sql, $nip);
		return $query->result_array();
	}


	public function getIzinNotif($nip)

	{
		$sql = "SELECT * FROM izin_pegawai WHERE nip=? AND status_notif=0 AND status IN (1,2)";
		$query = $this->db->query($sql, $nip);
		return $query->result_array();
	}


	public function getTimeline()

	{
		$sql = "select p.nm_pegawai,t.ket_status, LEFT(time(t.tgl),5) as jam from timeline t join pegawai p on t.nip=p.nip AND date(now())=date(t.tgl) order by t.tgl desc";
		$query = $this->db->query($sql);
		return $query->result_array();
	}
	public function saveIzinAbsensi($nip, $ket, $keterangan, $mulai, $sel, $foto)
	{
		$sql = "INSERT INTO izin_pegawai (tgl_mohon,nip,ket_absen,keterangan,tgl_mulai,tgl_selesai,file) VALUES (now(),'$nip','$ket','$keterangan','$mulai','$sel', '$foto')";
		$query = $this->db->query($sql);
		return true;
	}
	public function saveAbsensiWajah($nip, $loc)

	{
		$sql = "INSERT INTO absen_pegawai (tgl_absen,nip,location) VALUES (now(),'$nip','$loc')";
		$query = $this->db->query($sql);
		return true;
	}

	public function insertLogLokasi($nip, $loc)

	{
		$sql = "INSERT INTO log_location (nip,location) VALUES ('$nip','$loc')";
		$query = $this->db->query($sql);
		return true;
	}

	public function getIAS($nip)

	{
		$sql = "SELECT (SELECT COUNT(ket_absen) as izin FROM data_absen WHERE nip='$nip' and ket_absen = 'Izin')  as izin,
			(SELECT COUNT(ket_absen) as alpa FROM data_absen WHERE nip='$nip' and ket_absen = 'Alpha') as alpa,
			(SELECT COUNT(ket_absen) as sakit FROM data_absen WHERE nip='$nip' and ket_absen = 'Sakit') as sakit";
		$query = $this->db->query($sql);
		return $query->result_array();
	}
	public function setHit()
	{
		$queryhit = "SELECT hit FROM api";
		$gethit = $this->db->query($queryhit)->row();
		$count = (int) $gethit->hit + 1;
		$this->db->trans_begin();
		$sql = "UPDATE api SET hit=?";
		$query = $this->db->query($sql, array($count));
		$this->db->trans_complete();
		if ($this->db->trans_status()) {
			$this->db->trans_commit();
			return true;
		} else {
			$this->db->trans_rollback();
			return false;
		}
	}
	public function getHit()
	{
		$sql = "SELECT hit FROM api";
		$query = $this->db->query($sql);
		return $query->row();
	}

	public function getAbsenToday($nip)
	{
		$sql = "SELECT DATE(tgl_absen) AS tgl_absen FROM absen_pegawai WHERE DATE(tgl_absen)=DATE(NOW()) AND nip=?";
		$query = $this->db->query($sql, array($nip));
		return $query->row();
	}

	public function getAbsenKeluarToday($nip)
	{
		$sql = "SELECT DATE(tgl_pulang) AS tgl_pulang FROM absen_pegawai WHERE DATE(tgl_pulang)=DATE(NOW()) AND nip=?";
		$query = $this->db->query($sql, array($nip));
		return $query->row();
	}

	public function savefaceid($nip, $faceid)
	{
		$this->db->trans_begin();
		$sql = "INSERT INTO data_wajah (nip,face_id) VALUES ('$nip','$faceid')";
		$query = $this->db->query($sql);
		$this->db->trans_complete();
		if ($this->db->trans_status()) {
			$this->db->trans_commit();
			return true;
		} else {
			$this->db->trans_rollback();
			return false;
		}
	}
	public function getfaceid($nip)
	{
		$sql = "SELECT face_id FROM data_wajah where nip = '$nip'";
		$query = $this->db->query($sql);
		return $query->row();
	}

	public function saveAbsensiWajahkeluar($nip)
	{
		$sql = "UPDATE absen_pegawai SET tgl_pulang = NOW() WHERE DATE(tgl_absen) = DATE(NOW()) AND nip = '$nip'";
		$query = $this->db->query($sql);
		return true;
	}
}
