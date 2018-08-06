<style type="text/css">
	.container{
		margin-top: 100px;
		margin-left: 100px;
	}
	tr, th{
		text-align: center;
	}
	.panel-heading{
		font-size: 24px;
		font-family: century gothic;
	}
	.add{
		margin-top: -45px;
		margin-left: 1050px;
	}


</style>
<div class="container">
<?php if($this->session->flashdata('transaction_updated')) : ?>
     <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('branch_updated'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('transaction_deleted')) : ?>
      <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('transaction_deleted'); ?></p>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="col-lg-12">
  	<div class="panel panel-default">
      <div class="panel-heading">
      	Transaction List
      </div>
			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                    <th>Code</th>
			                    <th>Branch</th>
			                    <th>Date</th>
			                    <th>Total</th>
			                    <th>Action</th>
			                </tr>
			            </thead>

			            <?php if(isset($trans)) : ?>
			                <?php foreach($trans as $tran) : ?>
			                <tr>
			                    
			                    <td><?php echo $tran->branch_code; ?></td>
			                    <td><?php echo $tran->branch_name; ?></td>
			                    <td><?php echo $tran->tran_date; ?></td>
			                    <td><?php echo number_format($tran->tran_total, 2); ?></td>
			                    <td>
			                    	<a class="btn btn-xs btn-primary" href="<?php echo base_url(); ?>reports/view_transaction/<?php echo $tran->tran_id; ?>">VIEW</a>
			                      <a class="btn btn-danger btn-xs" onclick="return confirm('Do you want to delete?');" href="<?php echo base_url(); ?>reports/delete_alltrans/<?php echo $tran->tran_id; ?>">DELETE</a>
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
