   
    <?php
        $this->load->view('header');
    ?>
 <div class="container" style="padding-bottom: 20px;">
  <div class="row">
    <div class="col-md-12">
     <span> <button id="add_button"  data-toggle="modal" data-target="#packageModal" type="button" class="btn btn-success">Add</button>

      </span>
     <hr\>
   </div>
  </div>
</div>


<div class="container">
    <div class="row">
      <div class="col-md-12">
       <table id="packageTable" class="display" style="width:100%">
          <thead>
              <tr>
                  <th>Name</th>
                  <th>Price</th>
                  <th>Duration</th>
                  <th>Description</th>
                  <th>Edit</th>
                  <th>Delete</th>
              </tr>
          </thead>
          <tbody>
   
          </tbody>
          <tfoot>
              <tr>
                  <th>Name</th>
                  <th>Price</th>
                  <th>Duration</th>
                  <th>Description</th>
                  <th>Edit</th>
                  <th>Delete</th>
              </tr>
          </tfoot>
      </table>
    </div>
 </div>


	<?php
        $this->load->view('footer');
    ?>
  <script type="text/javascript">
    //onready
    $(document).ready(function() {
          function fetch_data(){
               $.ajax({

                    url: "<?php echo base_url();?>admin/action",
                    method : "POST",
                    data : {data_action:'fetch_all'},
                    success:function(data){
                        $('tbody').html(data);
                         var table =  $('#packageTable').DataTable();

                    }
              });

          }
          fetch_data();


          $('#add_button').click(function(){
            $('#package_form')[0].reset();
            $('#modalHead').text("Add Package");
            $('#data_action').val("Insert");
            $('.message-span').html('');
          });


          $('#submit').click(function(){
              event.preventDefault();
               $.ajax({

                    url: "<?php echo base_url();?>admin/actionMulti",
                    method : "POST",
                    data : $('#package_form').serialize(),
                    dataType:"json",
                    success:function(data){
                        if(data.success){
                          if( $('#data_action').val() =='Insert'){
                            $('#package_form')[0].reset();
                          }
                          $('.message-span-error').html('');
                          fetch_data();
                          $('#success_message').html(data.success_message);
                        }

                        if(data.error){
                          $('#name_error').html(data.name_error);
                          $('#price_error').html(data.price_error);
                          $('#duration_error').html(data.duration_error);
                          $('#description_error').html(data.description_error);
                        }


                    }
              });
          });

   });


     function editPackage(id){

        var newId = 'edit_button_'+id;
        var name = 'name_'+id;
        var price = 'price_'+id;
        var duration = 'duration_'+id;
        var description = 'description_'+id;

        $('.message-span').html('');
        $('#package_form')[0].reset();  
        $('#modalHead').text("Edit Package");
        

        $('#name').val($('#'+name).html());
        $('#price').val($('#'+price).html());
        $('#duration').val($('#'+duration).html());
        $('#description').val($('#'+description).html());
        $('#data_action').val("Edit");
        $('#edit_id').val(id);

     }        


     function delPackage(id){

        if(confirm("Are you sure you want to delete this package?")){

            $.ajax({
               url: "<?php echo base_url();?>admin/actionMulti",
               method:"POST",
               data:{package_id:id, data_action:'Delete'},
               dataType:"JSON",
               success:function(data){
                if(data.success){
                  fetch_data();
                }
               }

            });
        }
    }
    
  </script>

 <?php
        $this->load->view('modal');
    ?>