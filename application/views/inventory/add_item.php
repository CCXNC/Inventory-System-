<style type="text/css">
  .container{
    margin-top: 150px;
  }
  form, h2{
    margin-left: 250px;
  }
</style>

<div class="container">
  <div style="color:red">
   <?php echo validation_errors(); ?> 
  </div>
  
  <h2>Edit Item</h2>
  <form class="form-horizontal" action="<?php echo base_url('inventory/add_item/'. $employee->id); ?>" method="post">       
    <input type="" class="hidden form-control" name="id" value="<?php echo $employee->id; ?>" >
    <input type="" class="hidden form-control" name="branch_id" value="<?php echo $employee->branch_id; ?>" >
     <div class="form-group">                                                                                           
      <label class="control-label col-sm-2">Item</label>               
      <div class="col-sm-6">                                                                     
        <input type="text" class="form-control" name="item" >
      </div>
    </div>
    <div class="form-group">                                                                                           
      <label class="control-label col-sm-2">DESCRIPTION</label>               
      <div class="col-sm-6">                                                                     
        <input type="text" class="form-control" name="description" >
      </div>
    </div>
    <div class="form-group">                 
      <label class="control-label col-sm-2" >DATE ARRIVED</label>          
      <div class="col-sm-6">                      
        <input type="text" class="form-control" name="date_arrived" >     
      </div>      
    </div>                    
     <div class="form-group">                              
      <label class="control-label col-sm-2" >STATUS</label>            
      <div class="col-sm-6">                                                                             
        <input type="text" class="form-control" name="status">                     
      </div>    
    </div>                  
    <div class="form-group">                          
      <div class="col-sm-offset-2 col-sm-10">                          
        <button type="submit" class="btn btn-default">Submit</button>                  
      </div>     
    </div>      
  </form>       
</div>        