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
		margin-left: 1000px;
	}
	.hidden{
		display: none;
	}


</style>
<div class="container">
<?php if($this->session->flashdata('trans_added')) : ?>
     <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('trans_added'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('trans_deleted')) : ?>
      <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('trans_deleted'); ?></p>
<?php endif; ?>  
<?php if($this->session->flashdata('trans_updated')) : ?>
      <p class="alert alert-dismissable alert-info"><?php echo $this->session->flashdata('trans_updated'); ?></p>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
	<div class="col-lg-12">
  	<div class="panel panel-default">
      <div class="panel-heading">
      	<div class="head">Transmittal List</div>
      	<div class="add"><a href="<?php echo base_url(); ?>reports/add_transmittal" class="btn btn-primary">ADD</a></div>
      </div>
			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                    <th>Name</th>
			                    <th>Branch</th>
			                    <th>Date</th>
			                    <th>Description</th>
			                    <th>Action</th>
			                </tr>
			            </thead>
 
			            <?php if(isset($transmittal)) : ?>
			                <?php foreach($transmittal as $trans) : ?>
			                <tr>
			                    <td><?php echo $trans->name; ?></td>
			                    <td><?php echo $trans->branch_name; ?></td>
			                    <td><?php echo $trans->date; ?></td>
			                    <td><?php echo $trans->description; ?></td>
			                    <td>
			                    	<a class="btn btn-xs btn-default" href="<?php echo base_url(); ?>reports/print_transmittal/<?php echo $trans->trans_id; ?>">PRINT</a>
			                      <a class="btn btn-xs btn-primary" href="<?php echo base_url(); ?>reports/edit_transmittal/<?php echo $trans->trans_id; ?>">EDIT</a>
			                      <a class="btn btn-danger btn-xs" onclick="return confirm('Do you want to delete?');" href="<?php echo base_url(); ?>reports/delete_transmittal/<?php echo $trans->trans_id; ?>">DELETE</a>
			                    </td>
			                </tr>
			                <?php endforeach; ?>
			            <?php endif; ?>
			    			</table>
			    			<div class="margin3">
					        <?php echo $this->pagination->create_links(); ?>
					       </div> 
	      		</div>
	  			</div>      
     </div>            
  </div>
</div>
</div>

