        <!-- ============ Body content start ============= -->
        <div class="main-content-wrap sidenav-open d-flex flex-column">
            <div class="breadcrumb">
                <h1>Home</h1>
                <ul>
                    <li><a href="#">- Dashboard</a></li>                    
                </ul>
            </div>

            <div class="separator-breadcrumb border-top"></div>
    
            <!-- ============ Content Here ============= -->
            <div class="row">
                <!-- ICON BG -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4">
                        <div class="card-body text-center">
                            <i class="i-Add-User"></i>
                            <div class="content"  style="max-width: 150px !important;">
                                <p class="text-muted mt-2 mb-0">Total Pegawai</p>
                                <p class="text-primary text-24 line-height-1 mb-2"><?php echo $data_rekap[0] ?></p>
                                <span class="badge badge-danger">Hari Ini</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4">
                        <div class="card-body text-center">
                            <i class="i-Check"></i>
                            <div class="content" style="max-width: 150px !important;">
                                <p class="text-muted mt-2 mb-0">Sudah Absen</p>
                                <p class="text-primary text-24 line-height-1 mb-2"><?php echo $data_rekap[1] ?></p>
                                <span class="badge badge-danger">Hari Ini</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4">
                        <div class="card-body text-center">
                            <i class="i-Professor"></i>
                            <div class="content" style="max-width: 150px !important;">
                                <p class="text-muted mt-2 mb-0">Izin, Sakit, Cuti</p>
                                <p class="text-primary text-24 line-height-1 mb-2"><?php echo $data_rekap[2] ?></p>
                                <span class="badge badge-danger">Hari Ini</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4">
                        <div class="card-body text-center">
                            <i class="i-Remove-User"></i>
                            <div class="content" style="max-width: 150px !important;">
                                <p class="text-muted mt-2 mb-0">Pegawai Terlambat</p>
                                <p class="text-primary text-24 line-height-1 mb-2"><?php echo $data_rekap[3] ?></p>
                                <span class="badge badge-danger">Hari Ini</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- CHART -->
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="card-title  border-bottom d-flex align-items-center mb-1 pb-3">
                                <span>Absensi Pegawai</span><span class="flex-grow-1"></span><span class="badge badge-pill badge-primary"> Bulan Ini </span> </div>
                            <div id="echartBar" style="height: 300px;"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- ============ Body content End ============= -->
    </div>

    <!-- ============ BAR CHART ============= -->
    <script type="text/javascript">
        // based on prepared DOM, initialize echarts instance

        $dataBar = JSON.parse('<?php echo json_encode($data_bar); ?>');
        var myBarChart = echarts.init(document.getElementById('echartBar'));

        $tgl = [];
        for($i=1;$i<=31;$i++){
            $tgl.push($i);
        }
        // specify chart configuration item and data
        var option = {
            title: {},
            legend: {
                data:['Izin','Sakit','Cuti','Terlambat'],
                borderRadius:0,orient:"horizontal",x:"right"
            },
            grid:{left:"8px",right:"8px",bottom:"0",containLabel:!0},
            tooltip:{show:!0,backgroundColor:"rgba(0, 0, 0, .8)"},
            xAxis: {
                data: $tgl
            },
            yAxis: {interval:5,min:0},
            series: [
            {
                name: 'Izin',
                type: 'bar',
                data: $dataBar[0],
                
                label:{show:!1,color:"#639"},
                barGap:0,smooth:!0,
                itemStyle:{emphasis:{shadowBlur:10,shadowOffsetX:0,shadowOffsetY:-2,shadowColor:"rgba(0, 0, 0, 0.3)"}}
            },
            {        
                name: 'Sakit',
                type: 'bar',
                data: $dataBar[1],
                label:{show:!1,color:"#639"},
                barGap:0,smooth:!0,
                itemStyle:{emphasis:{shadowBlur:10,shadowOffsetX:0,shadowOffsetY:-2,shadowColor:"rgba(0, 0, 0, 0.3)"}}                
            },
            {        
                name: 'Cuti',
                type: 'bar',
                data: $dataBar[2],
                label:{show:!1,color:"#639"},
                barGap:0,smooth:!0,
                itemStyle:{emphasis:{shadowBlur:10,shadowOffsetX:0,shadowOffsetY:-2,shadowColor:"rgba(0, 0, 0, 0.3)"}}                
            },            
            {        
                name: 'Terlambat',
                type: 'bar',
                data: $dataBar[3],
                label:{show:!1,color:"#639"},
                barGap:0,smooth:!0,
                itemStyle:{emphasis:{shadowBlur:10,shadowOffsetX:0,shadowOffsetY:-2,shadowColor:"rgba(0, 0, 0, 0.3)"}}                
            }            
            ]
        };

        // use configuration item and data specified to show chart
        myBarChart.setOption(option);
    </script> 