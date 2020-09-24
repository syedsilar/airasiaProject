   
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



<div class="modal fade" id="packageModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalHead"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     <form method="post" id="package_form">

      
      <div class="modal-body">
          <div class="form-group">
            <span id="success_message" class="text-success message-span"></span>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Enter Name:</label>
            <input type="text" class="form-control" id="name" name="name">
            <span id="name_error" class="text-danger message-span message-span-error"></span>
          </div>

          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Enter Price:</label>
            <input type="text" class="form-control" id="price" name="price">
            <span id="price_error" class="text-danger message-span message-span-error"></span>
          </div>

          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Enter Duration:</label>
            <input type="text" class="form-control" id="duration" name="duration">
            <span id="duration_error" class="text-danger message-span message-span-error"></span>
          </div>

          <div class="form-group">
            <label for="message-text" class="col-form-label">Description:</label>
            <textarea class="form-control" id="description" name="description"></textarea>
            <span id="description_error" class="text-danger message-span message-span-error"></span>
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <input type="submit" id="submit" class="btn btn-primary">
        <input type="hidden" id="data_action" name="data_action" value="">
        <input type="hidden" id="edit_id" name="edit_id" value="">


      </div>
      </form>
    </div>
  </div>
</div>
