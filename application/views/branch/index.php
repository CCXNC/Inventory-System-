<style type="text/css">
	.container{
		margin-top: 100px;
		margin-left: 150px;
	}
	p{
		font-size: 24px;
		font-family: century gothic;
	}
	.add{
		margin-top: -45px;
		margin-left: 1050px;
	}



</style>
<div class="container">
<?php if($this->session->flashdata('branch_updated')) : ?>
     <p class="alert alert-dismissable alert-info"><?php echo $this->session->flashdata('branch_updated'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('branch_deleted')) : ?>
      <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('branch_deleted'); ?></p>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="col-lg-12">

  	<div class="panel panel-default">
		  <div class="search">
	  		<?php echo form_open('branch/index'); ?>
         	<div class="input-group col-lg-5">
        		<input type="text" class="form-control" placeholder="Search" name = "keyword"size="10px; ">
	        	<div class="input-group-btn">
	          	<button class="btn btn-default " type="submit" value = "Search"><i class="glyphicon glyphicon-search"></i></button>
	          </div>  
      		</div>
	      <?php echo form_close(); ?>
    	</div>	
    	<div class="panel-heading">
      	<p>Branch List</p>
      	<div class="add">
        	 <a class="btn btn-primary" href="<?php echo base_url(); ?>branch/add_branch_form">Add</a>
      	</div>
      </div>	
        
			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                    
			                    <th>Code</th>
			                    <th>Name</th>
			                    <th>Officer In Charge</th>
			                    <th>Telephone No.</th>
			                    <th>Action</th>
			                </tr>
			            </thead>

			            <?php if(isset($branches)) : ?>
			                <?php foreach($branches as $branch) : ?>
			                <tr>
			                   
			                    <td><?php echo $branch->code; ?></td>
			                    <td><?php echo $branch->name; ?></td>
			                    <td><?php echo $branch->oic; ?></td>
			                    <td><?php echo $branch->contact; ?></td>
			                    
			                    <td>
			                      <a class="btn btn-xs btn-info" href="<?php echo base_url(); ?>branch/edit_branch/<?php echo $branch->id; ?>">Edit</a>
			                      <a class="btn btn-danger btn-xs delete-btn" onclick="return confirm('Do you want to delete?');" href="<?php echo base_url(); ?>branch/delete_branch/<?php echo $branch->id; ?>">Delete</a>
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
