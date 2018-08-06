<style type="text/css">
  .container{
    margin-top: 150px;
    width: 50%;
  }
  .add {
    margin-left: 550px;
    margin-top: -20px;
  }
  
</style>
<div class="container">
  <?php if($this->session->flashdata('add_msg')) : ?>
    <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('add_msg'); ?></p>
  <?php endif; ?>  
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h3 class="panel-title">SELECT BRANCH</h3>
      <div class="add">
        <a class="btn btn-default" href="<?php echo base_url(); ?>index.php/inventory/add_users_and_item">ADD</a>
      </div>
    </div>
    <?php echo form_open('inventory/view_branch_users') ?>
      <div class="panel-body">
        <div style="color:red">
         <?php echo validation_errors(); ?> 
        </div>
        <div class="form-group">
          <div class="col-sm-offset-3 col-sm-6">
            <select class="form-control form-control-lg" name="branch">
              <option value=" ">SELECT</option>
              <?php if(isset($branches)) : ?>
                <?php foreach ($branches as $branch) : ?>
                  <option value="<?php echo $branch->id; ?>" <?php echo $branch->id == $this->session->userdata('branch') ? 'selected' : ''; ?>><?php echo $branch->name; ?></option>
                <?php endforeach; ?>  
              <?php endif; ?> 
            </select>
          </div>
        </div>
        <br>
        <br>
        <div class="form-group">        
          <div class="col-sm-offset-5 col-sm-10">
           <input type="submit" value="Activate" name="active" class="btn btn-md btn-primary "> 
          </div>
        </div>
      </div>
    <?php echo form_close();  ?>       
  </div>
</div>

 