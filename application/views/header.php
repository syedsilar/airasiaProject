<!DOCTYPE html>
<html lang="en">
  <head>
    <title>SyedSilar - AirAsia</title>
    <link rel = "icon" href = "<?php echo base_url();?>/public/assets/images/hotel-sign.png" type = "image/x-icon"> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php
        $this->load->view('styles');
    ?>
  </head>
  <body>

        <div class="wrap">
          <div class="container">
              <div class="row justify-content-between">
                <div class="col d-flex align-items-center">
                    <p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">+60 11233 09689</a> or <span class="mailus">email:</span> <a href="#">ssyedsilar@gmail.com</a></p>
                </div>
              </div>
           </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
           <a class="navbar-brand" href="<?php echo base_url();?>home">SyedSilar<span>AirAsia</span></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="fa fa-bars"></span> Menu
          </button>
          <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item <?php
                if($style == 'active1'){
                  echo 'active';
                }
                ?>"><a href="<?php echo base_url();?>home" class="nav-link ">Packages</a></li>
                <li class="nav-item <?php
                if($style == 'active2'){
                  echo 'active';
                }
                ?>"><a href="<?php echo base_url();?>admin" class="nav-link">Admin</a></li>
            </ul>
          </div>
        </div>

      </nav>
    <!-- END nav -->

  