     <!-- ============ Body content start ============= -->
        <div class="main-content-wrap sidenav-open d-flex flex-column">
            <div class="breadcrumb">
                <h1>Laporan</h1>
                <ul>
                    <li><a href="#">Edit dan Hapus Penugasan</a></li>                    
                </ul>
            </div>

            <div class="separator-breadcrumb border-top"></div>
             <div class="col-md-12 mb-4">
                    <div class="card text-left">

                           <div class="card-header">
                            <h4> Laporan Edit dan Hapus Penugasan</h4>
                           
                          </div>
                          <div class="card-body">
                            <form class="needs-validation" novalidate action="<?php echo base_url().'Laporan/Cetak' ?>" method="post" target="_blank">
                                <div class="row">
                                    <div class="col-md-2 form-group mb-3">
                                        <label for="bulan">Bulan</label>
                                        <select class="form-control" name="bulan" id="bulan" required>
                                            <option value="01"> Januari </option>
                                            <option value="02"> Februari </option>
                                            <option value="03"> Maret </option>
                                            <option value="04"> April </option>
                                            <option value="05"> Mei </option>
                                            <option value="06"> Juni </option>
                                            <option value="07"> Juli </option>
                                            <option value="08"> Agustus </option>
                                            <option value="09"> September </option>
                                            <option value="10"> Oktober </option>
                                            <option value="11"> Nopember </option>
                                            <option value="12"> Desember </option>

                                        </select>
                                    </div>
                                    <div class="col-md-2 form-group mb-3">
                                        <label for="tahun">Tahun</label>
                                        <input type="number" class="form-control" required name="tahun" id="tahun" 
                                        value="<?php echo date('Y') ?>" step=1 min=0>
                                    </div>
                                    <div class="col-md-2 form-group mb-3">
                                        <label for="jenis">Jenis</label>
                                        <select  name="jenis" id="jenis" class="form-control select2" required>
                                            <option value="EditHapus">Edit dan Hapus</option>
                                            <option value="Edit">Edit</option>
                                            <option value="Hapus">Hapus</option> 									
                                        </select> 
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
							        </div>                                     
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="bagian">Nama Bagian</label>
                                        <select  name="bagian" id="bagian" required class="form-control select2">
                                            <option value="ALL" >Keseluruhan</option>   									
                                            <?php if (!empty($data_bagian)){ foreach ($data_bagian as $bag) { ?>
                                                <option value="<?php echo $bag['cKdBagian'] ?>" ><?php echo $bag['cNmBagian'] ?></option>
                                            <?php }} ?>
                                        </select> 
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
							        </div>                                                                       
                                    <div class="col-md-12">
                                        <input type="hidden" name="id_lap" value="EDIT">
                                        <button class="btn btn-primary" type="submit" >Cetak</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                        </div>
                    </div>
                </div>
                <!-- end of col -->
            <!-- ============ Content Here ============= -->
        </div>
        <!-- ============ Body content End ============= -->
    </div>
<script type="text/javascript">
    function getSeksi(){
        $bag = $("#bagian option:selected").val();
        $.post("<?php echo base_url() ?>Laporan/getSeksi",{"bag":$bag})
        .done(function(data){
            $result = JSON.parse(data);
            $("#seksi").select2().empty();
            if($result!="-")
                $("#seksi").select2({'data' : $result });
        })
    }
</script>