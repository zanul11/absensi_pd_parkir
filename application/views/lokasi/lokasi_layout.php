        <!-- ============ Body content start ============= -->
        <div class="main-content-wrap sidenav-open d-flex flex-column">
            <div class="breadcrumb">
                <h1>Setup</h1>
                <ul>
                    <li><a href="#">- Lokasi</a></li>                    
                </ul>
            </div>

            <div class="separator-breadcrumb border-top"></div>
    
            <!-- ============ Content Here ============= -->
            <div class="card mb-4">
                <div class="card-header">
                    <h4>Data Lokasi <span>
                    <a class="float-right" href="<?php echo base_url().'Lokasi/AddPage';?>"><i class="i-Add"></i></a>
                    </span>
                    </h4>
                </div>
                <div class="card-body">
                    <table class="datatable_default table table-striped table-bordered">
                        <thead>
                            <th> Nomer </th>
                            <th >Keterangan</th>
                            <th >Koordinat</th>
                            <th width="10%">Aksi</th>
                        </thead>
                        <tbody>
                            <?php if(isset($data_table)){
                                $i = 1;
								foreach($data_table as $row){?>										
                                    <tr>
                                          <td ><?php echo $i++;?></td>
                                        <td ><?php echo $row["keterangan"];?></td>
                                        <td ><?php echo $row["koordinat"];?></td>
                                        <td ><center>
                                            <h4>
                                           	<a href="<?php echo base_url().'Lokasi/EditPage/'.$row["id_lokasi"];?>">
                                                    <i class='i-Pen-4'></i></a>         
                                            <a href='#' onclick="fn_deleteData('<?php echo 'Lokasi/DeleteData/'.$row['id_lokasi']?>')">
                                            <i class='i-Close'></i></a>
                                            </h4>
                                            </center>
                                        </td>
                                    </tr>
								<?php }								
							}?> 
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
        <!-- ============ Body content End ============= -->
    </div>        
    