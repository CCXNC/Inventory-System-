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
	.add{
		margin-top: -35px;
		margin-left: 990px;
	}

</style>
<div class="container">
<?php if($this->session->flashdata('add_msg')) : ?>
     <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('add_msg'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('tech_deleted')) : ?>
      <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('tech_deleted'); ?></p>
<?php endif; ?>  
<?php if($this->session->flashdata('tech_updated')) : ?>
      <p class="alert alert-dismissable alert-info"><?php echo $this->session->flashdata('tech_updated'); ?></p>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="col-lg-12">
  	<div class="panel panel-default">
      <div class="panel-heading">
      	<div class="head"><?php echo $employee->name; ?>&nbsp;(<?php echo $employee->position; ?>)</div>
      	<div class="add">
      		<a href="<?php echo base_url(); ?>inventory/add_item/<?php echo $employee->id; ?>" class="btn btn-primary">Add</a>
      		<a href="<?php echo base_url(); ?>inventory/view_branch_users" class="btn btn-primary">Back</a>
      	</div>
      </div>
			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                 	<th>ITEM</th>
				                <th>DESCRIPTION</th>
				                <th>DATE ARRIVED</th>
				                <th>STATUS</th>
				                <th>Action</th>
			                </tr>
			            </thead>
				          <?php if($employees) : ?>
			            	<?php foreach($employees as $emp) : ?>
			            		<?php if($emp->status != 'DEFECTIVE'): ?>
			            			<tr>
			            				<td><?php echo $emp->item ?></td>
					              	<td><?php echo $emp->description; ?></td>
					              	<td><?php echo $emp->date_arrived; ?></td>
					              	<td><?php echo $emp->status; ?></td>
					              	<td>
				                    <a class="btn btn-xs btn-primary" href="<?php echo base_url() ?>inventory/edit_item/<?php echo $emp->item_id; ?>">EDIT</a>
				                  </td>
					              </tr>	
											<?php endif; ?>					              
		            		<?php endforeach; ?>	
		            	<?php endif; ?>	
			           
			    			</table>
	      		</div>
	  			</div>      
     </div>            
  </div>
</div>
</div>

