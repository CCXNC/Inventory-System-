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
<form class="form-horizontal" action="<?php echo base_url('reports/edit_transmittal/'.$trans->trans_id); ?>" method="post">  
  <div class="panel panel-primary">
      <div class="panel-heading">
          <h3 class="panel-title">TRANSMITTAL</h3>
      </div>
      <div class="panel-body">
        <div style="color:red">
         <?php echo validation_errors(); ?> 
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2">Name</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" name="name" value="<?php echo $trans->name; ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-2">Branch</label>
          <div class="col-sm-3">
            <select class="form-control form-control-lg" name="branch">
              <option value="">SELECT</option>
               <?php if(isset($branches)) : ?>
                <?php foreach ($branches as $branch) : ?>
                  <option value="<?php echo $branch->id; ?>" <?php echo $trans->branch_id == $branch->id ? 'selected' : ''; ?>><?php echo $branch->name; ?></option>
                <?php endforeach; ?>  
              <?php endif; ?> 
            </select>
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-2">Corporation</label>
          <div class="col-sm-3">
            <select class="form-control form-control-lg" name="corp">
              <option value="">SELECT</option>
              <option value="NHFC" <?php echo $trans->corp == 'NHFC' ? 'SELECTED' : ''; ?>>NHFC</option>
              <option value="GTLIC" <?php echo $trans->corp == 'GTLIC' ? 'SELECTED' : ''; ?>>GTLIC</option>
            </select>
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-2">Date</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" name="date" value="<?php echo $trans->date; ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-2" >Description</label>
          <div class="col-sm-6">          
            <textarea class="form-control" name="description"><?php echo $trans->description; ?></textarea>
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
