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
