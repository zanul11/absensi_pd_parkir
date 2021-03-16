<?php ini_set('memory_limit', '-1'); ?>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="author" content="Bag.IT Lestari Informatika">
    <title>Laporan Edit dan Hapus Penugasan</title>
    <link rel="shortcut icon" href="<?php echo base_url().'assets/';?>images/logo.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/';?>styles/css/themes/lite-purple.min.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN Custom CSS-->    

    <!-- END Custom CSS-->    

    <style type="text/css">
        
        .img-center {
            display: block;
            margin: 0 auto;
        }
        .page-break {
            page-break-inside: avoid;
            page-break-before: auto;
        }
        .head {
            font-weight: bold;
            padding-right: 0px !important
        }
    </style>
</head>
<body >
<div class="col-12">
    <div class="row" style="height: 100px; border-bottom: 2px double">
        <div class="col-md-12 text-center" >
            <img src="<?php echo base_url().'assets/images/logo.png' ?>" width="95px" height="95px" >
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-12 text-center">
            <h6 > LAPORAN EDIT DAN HAPUS PENUGASAN <br><?php echo $periode ?> </h6>
        </div>
    </div>
	<br>
	<div class="row">
		<div class="col-md-12">
    		<table class="table table-sm table-bordered" style="font-family: tahoma; font-size: 10px;">
    			<thead style="background-color: #dee2e6">
    				<tr>
        				<th rowspan=2 style="vertical-align: middle;"><center>No</center></th>
        				<th rowspan=2 style="vertical-align: middle;"><center>Kd Penugasan</center></th>                       
                        <th rowspan=2 style="vertical-align: middle;"><center>Tanggal</center></th>
                        <th rowspan=2 style="vertical-align: middle;"><center>Nama Pekerjaan</center></th>
                        <th colspan=3 style="vertical-align: middle;"><center>Target</center></th>
                        <th rowspan=2 style="vertical-align: middle;"><center>Petugas</center></th>
                        <th rowspan=2 style="vertical-align: middle;"><center>Keterangan</center></th>
                        <th rowspan=2 style="vertical-align: middle;"><center>Seksi</center></th>
                        
        			</tr>
                    <tr>
                        <th style="vertical-align: middle;">Tgl Mulai</th>
                        <th style="vertical-align: middle;">Tgl Selesai</th>
                        <th style="vertical-align: middle;">Jumlah</th>                       
                    </tr>
    			</thead>
    			<tbody>
                    <?php 
                     if(!empty($data_laporan)){
                        $no=1;
                        $group = 0;
                        $bag = '';
                        foreach($data_laporan as $lap){ 
                            $group = ($bag!=$lap['cNmBagian']?1:0);
                            if($group==1){ 
                                $bag = $lap['cNmBagian']; ?>
                                <tr class="page-break">
                                    <td colspan="10"><b><?php echo 'Bagian : '.$lap['cNmBagian'] ?></b></td>
                                </tr>
                            <?php } ?>                            
                            <tr class="page-break">
                                <td><?php echo $no ?></td>
                                <td><?php echo $lap['cKdPenugasan'] ?></td>
                                <td><?php echo date("d-m-Y h:m",strtotime($lap['dTglPenugasan'])) ?></td>
                                <td><?php echo $lap['cNmKerja'] ?></td>
                                <td><?php echo date("d-m-Y h:m",strtotime($lap['dTargetTglMulai'])) ?></td>
                                <td><?php echo date("d-m-Y h:m",strtotime($lap['dTargetTglSelesai'])) ?></td>
                                <td><?php echo $lap['nQty'] ?></td>
                                <td><?php echo $lap['pegawai'] ?></td>
                                <td><?php echo ($lap['lBatal']==1?'[BATAL] - '.$lap['cKetBatal']:'[EDIT] - '.$lap['cKetEdit']) ?></td>                                
                                <td><?php echo $lap['cNmSeksi'] ?></td>
                            </tr>
                    <?php $no++;} ?> 
                    <?php } ?>                                                           
    			</tbody>
    		</table>
    	</div>
	</div>
    <footer>
        <div class="row" style="font-family: tahoma; font-size: 10px;">
            <div class="col-md-4 text-center">
                <label>&nbsp;</label><br>
                <label>&nbsp;</label><br>
                <label>&nbsp;</label>
                <br>
                <br>
                <label><b>&nbsp;</b></label>
            </div>                
            <div class="col-md-4 text-center">
                <label>&nbsp;</label><br>
                <label>&nbsp;</label><br>
                <label>&nbsp;</label>
                <br>
                <br>
                <label><b>&nbsp;</b></label>
            </div>                            
            <div class="col-md-4 text-center">
                <label>Probolinggo, <?php echo date('d-m-Y')?></label><br>
                <label>Dibuat Oleh :</label><br>
                <label>Kepala Bagian SDM</label>
                <br>
                <br>
                <label><b>Nama Pejabat</b></label>
            </div>                
        </div>

    </footer>     				
</div>
</body>
</html>