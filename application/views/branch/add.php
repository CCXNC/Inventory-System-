<style type="text/css">
  .container{
    margin-top: 100px;

  }
  form, h2{
    margin-left: 250px;
  }
</style>

<div class="container">
  <div style="color:red">
   <?php echo validation_errors(); ?> 
  </div>

  <?php if($this->session->flashdata('branch_added')) : ?>
      <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('branch_added'); ?></p>
  <?php endif; ?>
  <?php if($this->session->flashdata('branch_updated')) : ?>
     <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('branch_updated'); ?></p>
  <?php endif; ?>
  <?php if($this->session->flashdata('branch_deleted')) : ?>
        <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('branch_deleted'); ?></p>
  <?php endif; ?>  
  
  <h2>ADD BRANCH</h2>
  <form class="form-horizontal" action="<?php echo base_url('branch/add_branch_form') ?>" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2">CODE:</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" name="code">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >NAME:</label>
      <div class="col-sm-6">          
        <input type="text" class="form-control"  name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >ADDRESS:</label>
      <div class="col-sm-6">          
        <input type="text" class="form-control"  name="address">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >OIC:</label>
      <div class="col-sm-6">          
        <input type="text" class="form-control"  name="oic">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >CONTACT:</label>
      <div class="col-sm-6">          
        <input type="text" class="form-control"  name="contact">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>