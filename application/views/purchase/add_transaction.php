<style type="text/css">
	.row{
		margin-top: 100px;
		margin-left:100px;
	}
	.row1{
		margin-left: 0px
	}
	
	td
	{
		text-align: center;
	}
	.btnprocess{

		margin-left: 560px;
	}
	.input{
		margin-left: 100px;
	}
	.hidden{
		display: none;
	}
	.a{
		font-family: century gothic;
		font-size: 20px;
		color: black;
	}
	p{
		color: red;
	}
</style>
 
<form method="post" action="<?php echo base_url('purchase/add_transaction') ?>">
	<div class="row">
		<div class="col-sm-4">
		  <div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3 class="panel-title">TRANSACTION</h3>
		    </div>
		    <div class="panel-body">
		    	<div class="input">
			    	<div class="col-xs-6">
							<input class="form-control text-center" type="text" value="<?php echo $tran->id + 1; ?>" name="trans_id">
						</div>
					</div>
					<br><br>
					<div class="row11">
			      <div class="col-xs-6">
							<div class="form-group">
						    <select class="form-control form-control-lg" name="branch">
						    	<option value="">BRANCH</option>
						    	<?php if(isset($branches)) : ?>
						    		<?php foreach ($branches as $branch) : ?>
						    			<option value="<?php echo $branch->id; ?>"><?php echo $branch->name; ?></option>
						    		<?php endforeach; ?>	
						    	<?php endif; ?>	
						    </select>
							</div>
						</div>
						<div class="col-xs-5">
							<input class="form-control text-center" type="text" name="date" value="<?php echo date('Y-m-d'); ?>">
						</div>
					</div><br><br>
					<p><?php echo validation_errors(); ?></p>
		    </div>
		  </div>
		</div>
		<div class="row1">
			<div class="col-sm-7">
			  <div class="panel panel-primary">
			    <div class="panel-heading">
			        <h3 class="panel-title">LIST OF ITEMS</h3>
			        
			    </div>
			    <div class="panel-body">

			    	<table class="table table-bordered" id="table">
					    <thead>
					      <tr>
					        <th class="text-center">Item</th>
					        <th class="text-center">Description</th>
					        <th class="text-center">Price</th>
					      </tr>
					    </thead>
					    <tbody> 
					    	<?php if(isset($purchase_items)) : ?>
					    		<?php foreach($purchase_items as $purchase_item) : ?>
					    			<tr>
					    				<input type="text" name="id[]" class="hidden" value="<?php echo $purchase_item->id; ?>">
					    				<td>
					    					<input type="text" name="item_code[]" class="hidden" value="<?php echo $purchase_item->item_code; ?>">
					    					<input type="text" name="item_name[]" class="hidden" value="<?php echo $purchase_item->item_name; ?>">
					    					<?php echo $purchase_item->item_name; ?>
					    				</td>
					    				<td>
					    					<input type="text" name="description[]" class="hidden" value="<?php echo $purchase_item->description; ?>">
					    					<?php echo $purchase_item->description; ?>
					    				</td>
					    				<td>
					    					<input type="text" name="price[]" class="hidden price" value="<?php echo $purchase_item->price; ?>">
					    					<?php echo $purchase_item->price; ?>
					    				</td>	
					    			</tr>	
					    			
					    		<?php endforeach; ?>	
					    	<?php endif; ?>	
					    </tbody>
						</table>
						<div class="col-xs-4">
							<label class="form-">TOTAL</label>
							<input type="text" class="form-control text-center a" id="total" name="total">
						</div>	
						<div class="btnprocess">
						
							
							<br>
							<input type="submit" class="btn btn-primary col-xs-10" onclick="return confirm('Do you want to Process?');" name="submit" value="Process">
						</div>	
			    </div>
			  </div>
			</div>
		</div>		
	</div>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	total = 0;
	$(".price").each(function() {
	total = total + parseFloat(this.value);
	});
	$('#total').val(parseFloat(total));
});
</script>
