        <!-- ============ Body content start ============= -->
        <div class="main-content-wrap sidenav-open d-flex flex-column">
            <div class="breadcrumb">
                <h1>Setup</h1>
                <ul>
					<li><a href="#">- Lokasi</a></li>
					<li><a href="#">Add & Edit Data</a></li>                    
                </ul>
            </div>

            <div class="separator-breadcrumb border-top"></div>
    
			<!-- ============ Content Here ============= -->
            <div class="card mb-4">
                <div class="card-header">
                    <h4><?php echo $caption ?> Data Lokasi </h4>
                </div>
                <div class="card-body">
					<form class="needs-validation" novalidate action="<?php echo base_url().'Lokasi/'.$action ?>" method="post">
						<div class="form-row">
							<div class="col-md-2 mb-3">
								<label>Keterangan</label>
								<input type="text" class="form-control" placeholder="Keterangan" name="keterangan"
								value="<?php echo (isset($data_table)?$data_table['keterangan']:'') ?>" required>
								<div class="valid-feedback">
									Looks good!
								</div>
							</div>						
							<div class="col-md-10 mb-9">
								<label>Koordinat</label>
								<input type="text" class="form-control" placeholder="koordinat" name="koordinat" id="area"
								value="<?php echo (isset($data_table)?$data_table['koordinat']:'') ?>" required readonly>
								<div class="valid-feedback">
									Looks good!
								</div>
							</div>						
						</div>
                        <div class="row">
                            <div class="col-md-12 form-group mb-3">
                                <label>Map</label>
                                <div id="map-container" style="width:100%;height:500px;z-index:1"></div>
                            </div>   
                        </div>
						<div class="row">                                  	 
                            <div class="col-md-12 border-top pt-3">						
								<input type="hidden" name="id" value="<?php echo (isset($data_table)?$data_table['id_lokasi']:'') ?>" >
								<button class="btn btn-primary" type="submit">Simpan Data</button>
								<a class="btn btn-danger" href="<?php echo base_url().'Lokasi'?>">Batal</a>
							</div>
						</div>
					</form>


                </div>
                
            </div>
        </div>
        <!-- ============ Body content End ============= -->
    </div>  


	
 <script src="<?php echo base_url() ?>assets/leaflet/leaflet.js"></script>
<script src="<?php echo base_url() ?>assets/leaflet/draw/leaflet.draw.js"></script>
<script>    
    var map;
    var areaOverlays = []; 
    var areaHandle   = "<?php echo (isset($data_table)?$data_table['koordinat']:'') ?>";

    initMap();
    
    function initMap() {

      map = L.map('map-container').setView([-8.673636,115.239934],20);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        var editableLayers = new L.FeatureGroup();
        map.addLayer(editableLayers);

        var options = {
            position: 'topright',
            draw: {
                polygon : true,
                circle :false,
                rectangle: false,
                circlemarker: false,
                polyline: false,
                marker: false
            },
            edit: {
                featureGroup: editableLayers, //REQUIRED!!
                remove: true,
                edit:false
            }
        };
        var drawControl = new L.Control.Draw(options);
        map.addControl(drawControl);

        map.on("draw:drawstart", function (e){
           editableLayers.clearLayers()
        });

        map.on(L.Draw.Event.CREATED, function (e) {
            editableLayers.addLayer(e.layer);
            coord = editableLayers.toGeoJSON().features[0].geometry.coordinates;            
            // console.log(editableLayers);

            var newPath = [];        
            // Now iterate through all the polylines and draw them on the map.
            for(var i = 0; i < coord[0].length; i++) {         
                newPath.push([coord[0][i][1],coord[0][i][0]]);           
            } 
            JSONString = JSON.stringify(newPath);
            $("#area").val(JSONString);

        });

        displayArea(editableLayers);
    }

    function displayArea(Layer) {
        if(areaHandle == "") {
            return;
        }

        area = JSON.parse(areaHandle);

        var polygon = new L.polygon(area);
        Layer.addLayer(polygon);
        // map.fitBounds(polygon.getBounds());
        center = polygon.getBounds().getCenter();
        map.flyTo(new L.LatLng(center.lat,center.lng), 15);
        
        console.log(polygon.getBounds().getCenter());
    }
</script>