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
<?php if($this->session->flashdata('item_updated')) : ?>
     <p class="alert alert-dismissable alert-info"><?php echo $this->session->flashdata('item_updated'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('item_deleted')) : ?>
      <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('item_deleted'); ?></p>
<?php endif; ?> 
<!-- TABLE OF ITEMS -->
<div class="row">
	<div class="col-lg-12">

  	<div class="panel panel-default">
		  <div class="search">
	  		<?php echo form_open('item/index'); ?>
         	<div class="input-group col-lg-5">
        		<input type="text" class="form-control" placeholder="Search" name = "keyword"size="10px; ">
	        	<div class="input-group-btn">
	          	<button class="btn btn-default " type="submit" value = "Search"><i class="glyphicon glyphicon-search"></i></button>
	          </div>  
      		</div>
	      <?php echo form_close(); ?>
    	</div>
    	 <div class="panel-heading">
      	<p>Item List</p>
      	<div class="add">
        	 <a class="btn btn-primary" href="<?php echo base_url(); ?>item/add_item_form">Add</a>
      	</div>
      </div>	

			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                    <th>Code</th>
			                    <th>Name</th>
			                    <th>Action</th>
			                </tr>
			            </thead>

			            <?php if(isset($items)) : ?>
			                <?php foreach($items as $item) : ?>
			                <tr>
			                   
			                    <td><?php echo $item->code; ?></td>
			                    <td><?php echo $item->name; ?></td>
			                    <td>
			                      <a class="btn btn-xs btn-info" href="<?php echo base_url(); ?>item/edit_item/<?php echo $item->id; ?>">Edit</a>
			                      <a class="btn btn-danger btn-xs delete-btn" onclick="return confirm('Do you want to delete?');" href="<?php echo base_url() ?>item/delete_item/<?php echo $item->id; ?>">Delete</a>
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
