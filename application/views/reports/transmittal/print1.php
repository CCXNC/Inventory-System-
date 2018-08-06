<style type="text/css">
	.container{
		margin-top: 100px;
		margin-left: 100px;
	}
	
	.head{
		font-size: 18px;
		font-family: century gothic;
	}
	tr{
		font-size: 14px;
		font-family: century gothic;
	}
	.add{
		margin-top: -35px;
		margin-left: 1050px;
	}
	.row{
		margin-top: -100px;
		width: 100%;
	}
	.a{
		margin-left: 0px;
	}
	.margin{
		border: 1px solid white;
		width: 100px;
		height: 50px;
	}
	.right{
		margin-left: 350px;
		margin-top: -70px;
	}
	.right1{
		margin-left: 330px;
		margin-top:  10px;
	}
	.prepared{
		margin-top: 10px;
		margin-left: 10px;
	}
	.recieved{
		margin-top: -20px;
		margin-left: 280px;
	}


</style>
<div class="container">
<?php if($this->session->flashdata('trans_added')) : ?>
     <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('trans_added'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('trans_deleted')) : ?>
      <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('trans_deleted'); ?></p>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="a">
		<a class="img" href="#"><img src="<?php echo base_url(); ?>/assets/img/gtlicc.png" height="150px;" width="700px;"></a>
	</div>
	<div class="col-lg-12">
  	<div class="panel panel-default">
      <div class="panel-heading">
      	<div class="head">Transmittal Form</div>
      </div>
			    <div class="panel-body">
			    	<div class="form-group">
		          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>To:</b>&nbsp;&nbsp;<?php echo $trans->name; ?>
		        </div>
		        <div class="form-group">
		          <b>From:</b>&nbsp;&nbsp;CHRISTIAN GUARIN
		        </div>

		        <div class="right">
			        <div class="form-group">
			          	<b>Date:</b>&nbsp;&nbsp;<?php echo $trans->date; ?>
			        </div>
			      </div>
			      <div class="right1"> 
			        <div class="form-group">
			          	<b>Branch:</b>&nbsp;&nbsp;<?php echo $trans->branch_name; ?>
			        </div>
			      </div>  

			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                  <th>Office Equipment</th>
			                </tr>
			                <tr>
			                  <td><?php echo $trans->description; ?></td>
			                </tr>
			            </thead>
			    			</table>
	      		</div>
	      		<div class="prepared">
	      			<b>Prepared By:</b>&nbsp;&nbsp;CHRISTIAN GUARIN
	      		</div>	
	      		<div class="recieved">
	      			<b>Recieved By:</b>&nbsp;&nbsp;<?php echo $trans->name; ?>
	      		</div>	
	  			</div>      
     </div>            
  </div>
  <div class="margin">

  </div>	
	  <div class="a">
			<a class="img" href="#"><img src="<?php echo base_url(); ?>/assets/img/gtlicc.png" height="150px;" width="700px;"></a>
		</div>
	  <div class="col-lg-12">
	  	<div class="panel panel-default">
	      <div class="panel-heading">
	      	<div class="head">Transmittal Form</div>
	      </div>
				    <div class="panel-body">
				    	<div class="form-group">
			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>To:</b>&nbsp;&nbsp;<?php echo $trans->name; ?>
			        </div>
			        <div class="form-group">
			          <b>From:</b>&nbsp;&nbsp;CHRISTIAN GUARIN
			        </div>

			        <div class="right">
				        <div class="form-group">
				          	<b>Date:</b>&nbsp;&nbsp;<?php echo $trans->date; ?>
				        </div>
				      </div>
				      <div class="right1"> 
				        <div class="form-group">
				          	<b>Branch:</b>&nbsp;&nbsp;<?php echo $trans->branch_name; ?>
				        </div>
				      </div>  

				      <div class="table-responsive">
				          <table class="table table-bordered table-hover table-striped">
				            <thead>
				                <tr>
				                  <th>Office Equipment</th>
				                </tr>
				                <tr>
				                  <td><?php echo $trans->description; ?></td>
				                </tr>
				            </thead>
				    			</table>
		      		</div>
		      		<div class="prepared">
		      			<b>Prepared By:</b>&nbsp;&nbsp;CHRISTIAN GUARIN
		      		</div>	
		      		<div class="recieved">
		      			<b>Recieved By:</b>&nbsp;&nbsp;<?php echo $trans->name; ?>
		      		</div>	
		  			</div>      
	     </div>            
	  </div>
</div>


