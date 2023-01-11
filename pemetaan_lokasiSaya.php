<div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputEmail4">Lokasi Saya</label>
          <script>
            navigator.geolocation.getCurrentPosition(success=(position)=>{
              console.log(position.coords)
              let getLongitude = position.coords.longitude
              let getLatitude = position.coords.latitude

              $('#lokasi_awal').val(getLatitude+','+getLongitude)
              
            },error=(err)=>{
              $('#lokasi_awal').val(err.message)
              console.log(err.message)
            })
          </script>
          <input class="form-control" type="text" disabled  name="" value="" id="lokasi_awal">
          
        </div>
        <div class="form-group col-md-6">
          <label for="inputPassword4">Lokasi Tujuan</label>
          <select  id="lokasi_tujuan" class="form-control">
            <option selected> --Silakan Pilih--</option>
            <?php
            $kec = $conn->query("SELECT * FROM makan");
            if($kec->num_rows >0){
              while($row = $kec->fetch_assoc()){
                ?>
                <option value="<?= $row['latitude']; ?>,<?= $row['longitude'] ?>"?><?= $row['nama'] ?></option>
                <?php
              }
            }
            ?>
          </select>
        </div>
        <div class="col-lg-2">
      <button id="rute" class="btn btn-danger" style="margin-top: 32px;">rute</button></div>
      </div>
      
    </div>