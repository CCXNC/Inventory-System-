<style type="text/css">
	.container{
		margin-top: 40px;
		margin-left: 50px;
	}
	.panel-heading{
		height: 50px;
	}
	tr, th{
		text-align: center;
	}
	p{
		font-size: 24px;
		font-family: century gothic;
	}
	.print{
		margin-top: -45px;
		margin-left: 850px;
	}
	.total{
		margin-left: 0px;
	}
	.img{
		margin-left: 20px;
	}
	.name{
		margin-left: 100px;
		margin-top: 80px;
		font-size: 20px;
		font-family: century gothic;
		font-style: bold;
	}
	.position{
		margin-left: 200px;
		font-size:16px;
		font-family: century gothic;
		font-style: bold;
	}
	.date{
		margin-top:5px;
		margin-left: 380px;
		font-size:20px;
		font-family: century gothic;
		font-style: bold;
		text-align: center;
	}
	.datetoday{
		margin-top: -70px;
		margin-left: 400px;
		font-size:20px;
		font-family: century gothic;
		font-style: bold;
	}
	.bor{
		border-top:1px solid black;
		width: 230px
	}
	.bor1{
		border-top:1px solid black;
		width: 150px
	}

</style>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#printButton').click(function() {
		$('#menuTab').css('display', 'none');
		$('#printButton').hide();
		window.print();
	});
});
</script>
<div class="container">
	<a class="img" href="#"><img src="<?php echo base_url(); ?>/assets/img/Logowithtext.png"  width="900px;"></a>
<!-- TABLE OF BRANCHES -->
	<div class="row">
		<div class="col-lg-10">
	  	<div class="panel panel-default">
	      <div class="panel-heading">
	      	<p><?php echo $trans_branch->name; ?></p>
	      	<div class="print">
	      		<input type="submit" class="btn btn-primary" id="printButton" value="Print">
	      	</div>
	      </div>
		    <div class="panel-body">
		      <div class="table-responsive">

		          <table class="table table-bordered table-hover table-striped">
		            <thead>
		                <tr>
	                    <th>ITEM</th>
	                    <th>CODE</th>
	                    <th>DESCRIPTION</th>
	                    <th>PRICE</th>
		                </tr>
		            </thead>

		            <?php if(isset($trans)) : ?>
		                <?php foreach($trans as $tran) : ?>
		                <tr>
	                    <td><?php echo $tran->purchase_items_name; ?></td>
	                    <td><?php echo $tran->purchase_items_code; ?></td>
	                    <td><?php echo $tran->purchase_items_description; ?></td>
	                   	<td><?php echo number_format($tran->purchase_items_price,2); ?></td>
		                </tr>
		                <?php endforeach; ?>
		            <?php endif; ?>
		    			</table>
		    			<div class="col-xs-3 total">
		    				<label>TOTAL</label>
		    				<b><input type="text" class="form-control text-center" value="<?php echo number_format($trans_total->total,2); ?>"></b>
		    			</div>	
      		</div>
  			</div>  
	  </div>
	</div>
</div>
<div class="name bor">Karen Yvette Caronan</div>
	<div class="position">(CFO)</div>
	<div class="datetoday"><?php echo date('F,d,Y'); ?></div>
	<div class="date bor1">Date</div>

