   
    <?php
        $this->load->view('header');
    ?>
      <section class="hero-wrap hero-wrap-2" style="background-image: url('<?php echo base_url();?>/public/assets/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-0 bread">Tune Hotels</h1>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row d-flex">
          <?php foreach ($data as $key => $value) { ?>
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('<?php echo base_url();?>/public/assets/images/image_<?php echo rand(1, 20);?>.jpg');">
              </a>
              <div class="text p-4 text-center">
                <h2 class="heading"><a href="#"><b><?php echo $value['name'];?></b></a></h2>
                <div class="meta mb-2">
                  <div><h5><i><?php echo $value['price'].' MYR';?></i></h5></div>
                </div>
                 <div class="meta mb-2">
                  <div><a href="#"><?php echo ', '.$value['duration'];?></a></div>
                </div>
                <p><?php echo $value['description'];?></p>
              </div>
            </div>
          </div>
        <?php } ?>
    </section>
	
	<?php
        $this->load->view('footer');
    ?>