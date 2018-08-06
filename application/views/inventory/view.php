<style type="text/css">
	.container{
		margin-top: 100px;
		margin-left: 100px;
	}
	tr, th{
		text-align: center;
	}
	.head{
		font-size: 24px;
		font-family: century gothic;
	}
	.modal-content
	{
	    width: 800px;
	    margin-left: 290px;
	    margin-top: 100px;
	}
	.modal-title
	{
	    padding-bottom: 50px;
	}
	.form-group
	{
	    font-weight: 2em;

	}
	.modal
	{
	    overflow-y: scroll;
	}

</style>
<div class="container">
	<?php if($this->session->flashdata('add_msg')) : ?>
	      <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('add_msg'); ?></p>
	<?php endif; ?>  
	<?php if($this->session->flashdata('user_deleted')) : ?>
	      <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('user_deleted'); ?></p>
	<?php endif; ?>  
	<?php if($this->session->flashdata('user_updated')) : ?>
	      <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('user_updated'); ?></p>
	<?php endif; ?>  
	<!-- TABLE OF BRANCHES -->
	<div class="row">
		<div class="col-lg-12">
	  	<div class="panel panel-default">
	      <div class="panel-heading">
	      	<div class="head">Inventory List</div>
	      </div>
				    <div class="panel-body">
				      <div class="table-responsive">
				          <table class="table table-bordered table-hover table-striped">
				            <thead>
				                <tr>
			                    <th>Branch</th>
			                    <th>Name</th>
			                    <th>Position</th>
			                    <th>Corporation</th>
			                    <th>Date</th>
			                    <th>Action</th>
				                </tr>
				            </thead>
				            <?php if(isset($employees)) : ?>
				                <?php foreach($employees as $emp) : ?>
					                <tr>
				                    <td><?php echo $emp->branch_name; ?></td>
				                    <td><?php echo $emp->name; ?></td>
				                    <td><?php echo $emp->position; ?></td>
				                    <td><?php echo $emp->corp; ?></td>
				                    <td><?php echo $emp->date; ?></td>
				                    <td>
				                      <a class="btn btn-xs btn-default" href="<?php echo base_url() ?>inventory/get_inventory_items/<?php echo $emp->id; ?>">View</a>
				                       <a class="btn btn-xs btn-primary" href="<?php echo base_url() ?>inventory/edit_user/<?php echo $emp->id; ?>">Edit</a>
				                      <a class="btn btn-danger btn-xs" onclick="return confirm('Do you want to delete?');" href="<?php echo base_url()?>inventory/delete_user_and_items/<?php echo $emp->id; ?>">Delete</a>
				                    </td>
					                </tr>
				                <?php endforeach; ?>
				            <?php endif; ?>
				    			</table>
		      		</div>
		  			</div>      
	     </div>            
	  </div>
	</div>
</div>
<script> 
function showModal(modalId) {
    var modal = document.getElementById(modalId);

    modal.style.display = 'block';
}

function closeModal(modalId) {
    var modal = document.getElementById(modalId);

    modal.style.display = 'none';
}
</script>                         
