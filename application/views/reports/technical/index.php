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
		margin-left: 1050px;
	}


</style>
<div class="container">
<?php if($this->session->flashdata('tech_added')) : ?>
     <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('tech_added'); ?></p>
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
      	<div class="head">Technical List</div>
      	<div class="add"><a href="<?php echo base_url(); ?>reports/add_technical_form" class="btn btn-primary">ADD</a></div>
      </div>
			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                    
			                    <th>Name</th>
			                    <th>Branch</th>
			                    <th>Start Date</th>
			                    <th>Repaired Date</th>
			                    <th>Description</th>
			                    <th>Action</th>
			                </tr>
			            </thead>
 
			            <?php if(isset($technicals)) : ?>
			                <?php foreach($technicals as $tech) : ?>
			                <tr>
			                    
			                    <td><?php echo $tech->name; ?></td>
			                    <td><?php echo $tech->branch_name; ?></td>
			                    <td><?php echo $tech->start_date; ?></td>
			                    <td><?php echo $tech->end_date; ?></td>
			                    <td><?php echo $tech->description; ?></td>
			                    <td>
			                      <a class="btn btn-xs btn-primary" href="<?php echo base_url(); ?>reports/edit_technical/<?php echo $tech->tech_id; ?>">EDIT</a>
			                      <a class="btn btn-danger btn-xs" onclick="return confirm('Do you want to delete?');" href="<?php echo base_url(); ?>reports/delete_technical/<?php echo $tech->tech_id; ?>">DELETE</a>
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
