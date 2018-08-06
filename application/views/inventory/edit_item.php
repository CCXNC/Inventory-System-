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
  <form class="form-horizontal" action="<?php echo base_url('inventory/edit_item/'. $employee->id); ?>" method="post">        
    <div class="form-group">                                                                                           
      <label class="control-label col-sm-2">DESCRIPTION</label>               
      <div class="col-sm-6">                                                                     
        <input type="text" class="form-control" name="description" value="<?php echo $employee->description; ?>">
      </div>
    </div>
    <div class="form-group">                 
      <label class="control-label col-sm-2" >DATE ARRIVED</label>          
      <div class="col-sm-6">                      
        <input type="text" class="form-control" name="date_arrived" value="<?php echo $employee->date_arrived; ?>">     
      </div>      
    </div>                    
     <div class="form-group">                              
      <label class="control-label col-sm-2" >STATUS</label>            
      <div class="col-sm-6">                                                                             
        <input type="text" class="form-control" name="status" value="<?php echo $employee->status; ?>">                     
      </div>    
    </div>                  
    <div class="form-group">                          
      <div class="col-sm-offset-2 col-sm-10">                          
        <button type="submit" class="btn btn-default">Submit</button>                  
      </div>     
    </div>      
  </form>       
</div>        