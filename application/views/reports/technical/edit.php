<style type="text/css">
  .container{
    margin-top: 150px;
  }
  form{
    margin-left: 250px;
    margin-top: 100px;
    width: 60%;
  }
</style>
<form class="form-horizontal" action="<?php echo base_url('reports/edit_technical/'.$tech->tech_id); ?>" method="post">  
  <?php if($this->session->flashdata('tech_msg')) : ?>
      <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('tech_msg'); ?></p>
  <?php endif; ?>  
  <div class="panel panel-primary">
      <div class="panel-heading">
          <h3 class="panel-title">TECHNICAL</h3>
      </div>
      <div class="panel-body">
        <div style="color:red">
         <?php echo validation_errors(); ?> 
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2">Name</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" name="name" value="<?php echo $tech->name; ?>">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2">Branch</label>
          <div class="col-sm-3">
            <select class="form-control form-control-lg" name="branch">
              <?php if(isset($branches)) : ?>
                <?php foreach ($branches as $branch) : ?>
                  <option value="<?php echo $branch->id; ?>" <?php echo $tech->branch_id == $branch->id ? 'selected' : ''; ?>><?php echo $branch->name; ?></option>
                <?php endforeach; ?>  
              <?php endif; ?> 
            </select>
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-2">Start Date</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" name="start_date" value="<?php echo $tech->start_date; ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-2" >End Date</label>
          <div class="col-sm-6">          
            <input type="text" class="form-control"  name="end_date" value="<?php echo $tech->end_date; ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-2" >Description</label>
          <div class="col-sm-6">          
            <textarea class="form-control" name="description"><?php echo $tech->description; ?></textarea>
          </div>
        </div>          

        <div class="form-group">        
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary" onclick="return confirm('Do you want to ADD?');">Submit</button>
          </div>
        </div>

      </div>
  </div>
</form>  
