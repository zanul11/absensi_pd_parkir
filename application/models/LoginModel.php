<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginModel extends CI_Model{
	public function __construct(){
		parent :: __construct();	
	}
	
	public function getUserData($user,$pass)
	{

		$qry = $this->db->query("SELECT a.*,b.nm_pegawai,b.gol FROM user a JOIN pegawai b ON a.nip=b.nip 
		WHERE a.username=? and a.password=?",array($user,$pass));

		 if($qry->num_rows()==0){
			return false;
		 }else{
		 	$rs = $qry->row();
		 	$find_akses =  $this->db->query("SELECT * from vw_hakakses where username=? order by kd_menu",array($user));
		 	$menu = ($find_akses->num_rows()==0?false:$find_akses->result_array());

		 	return array(
		 		'cuser' => $rs->username ,
		 		'nama'=> $rs->nm_pegawai,
				'nip'=>$rs->nip,
		 		'akses'=>$menu);
		 }
	}

}

?>
