<style type="text/css">
	.row{
		margin-top: 80px;
		margin-left: 50px;
	}
	.row11{
		margin-left: 40px;
	}
	.row2{
		margin-left: 50px;
	}
	.row3{
		margin-top: -180px;
	}
	hr{
		border-top: 3px double #8c8b8b;
	}
	.input{
		margin-left: 100px;
	}
	td
	{
		text-align: center;
	}
	.btndes{
		margin-top: 80px;
		margin-left: 180px;
	}
	.btnprocess{
		margin-left: 500px;
		margin-top: -20px;
	}
	.csstotal{
		margin-left: 250px;
	}
</style>
<?php echo validation_errors(); ?>
<form method="post" action="<?php echo base_url('purchase/add_item') ?>">
	<div class="row">
		<!-- Transaction -->
		<div class="col-sm-5">
		  <div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3 class="panel-title">TRANSACTION</h3>
		    </div>
		    <div class="panel-body">
					<div class="row11">
						<div class="col-xs-5">
							<input class="form-control text-center" type="text" value="<?php echo $tran->id + 1; ?>" name="trans_id">
						</div>
						<div class="col-xs-5">
							<input class="form-control text-center" type="text" name="date" value="<?php echo date('Y-m-d'); ?>">
						</div>
					</div>	
		    </div>
		  </div>
		</div>
		<!--  END Transaction -->
	</div>

	<div class="row2">
		<!--  ADD ITEM -->
		<div class="col-sm-5">
		  <div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3 class="panel-title">ADD ITEM</h3>
		    </div>
		    <div class="panel-body">
		      <div class="input1">
		       	<div class="col-xs-5">
							<div class="form-group">
						    <select class="form-control form-control-lg" id="items" name="item">
						    	<option value="">SELECT</option>
						    	<?php if(isset($items)) : ?>
						    		<?php foreach($items as $item) : ?>
						    			<option value="<?php echo $item->id; ?>"><?php echo $item->name; ?></option>
						    		<?php endforeach;?>
						    	<?php endif; ?>
						    </select>
							</div>
						</div>
						
					</div>
					<div class="col-xs-7">
						<input class="form-control" type="text" id="description" name="description" placeholder="DESSCRIPTION">
					</div>
					<div class="col-xs-7">
						<input class="form-control" type="text" id="amount" name="price" placeholder="Price">
					</div>
					<div class="btndes">
						<input type="submit" class="btn btn-primary col-xs-3" onclick="return confirm('Do you want to Add?');" name="submit" id="btn" value="ADD">
					</div>
		    </div>
		  </div>
		</div>
		<!--  End ADD ITEM -->
	</div>

	<div class="row3">		
		<!--  List of items -->
		<div class="col-sm-6">
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
				        <th class="text-center">&nbsp;</th>
				      </tr>
				    </thead>
				    <tbody>
				    	<?php if(isset($purchase_items)) : ?>
				    		<?php foreach($purchase_items as $purchase_item) : ?>
				    			<tr>
				    				<td><?php echo $purchase_item->item_name; ?></td>
				    				<td><?php echo $purchase_item->description; ?></td>
				    				<td>
				    					<?php echo $purchase_item->price; ?>
				    				</td>	
				    				<td>
				    					<a href="<?php echo base_url(); ?>purchase/delete_item/<?php echo $purchase_item->id; ?>">
							          <span class="glyphicon glyphicon-remove"></span>
							        </a>
				    				</td>
				    			</tr>	
				    			
				    		<?php endforeach; ?>	
				    	<?php endif; ?>	
				    </tbody>
					</table>
					<div class="btnprocess">
						<br>
						<a href="<?php echo base_url(); ?>purchase/add_transaction" class="btn btn-primary">Proceed</a>
					</div>	
		    </div>
		  </div>
		</div>
		<!--  END List of items -->
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


