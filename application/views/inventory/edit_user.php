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
  
  <h2>Edit User</h2>
  <form class="form-horizontal" action="<?php echo base_url('inventory/edit_user/'. $employee->id); ?>" method="post">        
    <div class="form-group">                                                                                           
      <label class="control-label col-sm-2">Branch</label>               
      <div class="col-sm-6">                                                                     
        <input type="text" class="form-control" name="branch" readonly="" value="<?php echo $employee->branch_name; ?>">
      </div>
    </div>
     <div class="form-group">                                                                                           
      <label class="control-label col-sm-2">Name</label>               
      <div class="col-sm-6">                                                                     
        <input type="text" class="form-control" name="name" value="<?php echo $employee->name; ?>">
      </div>
    </div>
    <div class="form-group">                 
      <label class="control-label col-sm-2" >Position</label>          
      <div class="col-sm-6">                      
        <input type="text" class="form-control" name="position" value="<?php echo $employee->position; ?>">     
      </div>      
    </div>                    
     <div class="form-group">                              
      <label class="control-label col-sm-2" >Corporation</label>            
      <div class="col-sm-6">                                                                             
        <input type="text" class="form-control" name="corp" value="<?php echo $employee->corp; ?>">                     
      </div>    
    </div>  
     <div class="form-group">                              
      <label class="control-label col-sm-2" >Dates</label>            
      <div class="col-sm-6">                                                                             
        <input type="text" class="form-control" name="date" value="<?php echo $employee->date; ?>">                     
      </div>    
    </div>                  
    <div class="form-group">                          
      <div class="col-sm-offset-2 col-sm-10">                          
        <button type="submit" class="btn btn-default">Submit</button>                  
      </div>     
    </div>      
  </form>       
</div>        