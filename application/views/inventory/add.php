<style type="text/css">
  .container{
    margin-top: 70px;
  }
</style>
<div class="container">
  <form class="form-horizontal" action="<?php echo base_url('inventory/add_users_and_item') ?>" method="post">  
    <?php if($this->session->flashdata('add_msg')) : ?>
        <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('add_msg'); ?></p>
    <?php endif; ?>  
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">INVENTORY</h3>
        </div>
        <div class="panel-body">
          <div style="color:red">
           <?php echo validation_errors(); ?> 
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2">Name</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" name="name">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Branch</label>
            <div class="col-sm-3">
              <select class="form-control form-control-lg" name="branch">
                <option value=" ">SELECT</option>
                <?php if(isset($branches)) : ?>
                  <?php foreach ($branches as $branch) : ?>
                    <option value="<?php echo $branch->id; ?>"><?php echo $branch->name; ?></option>
                  <?php endforeach; ?>  
                <?php endif; ?> 
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Corporation</label>
            <div class="col-sm-3">
              <select class="form-control form-control-lg" name="corp">
                <option value=" ">SELECT</option>
                <option value="NHFC">NHFC</option>
                <option value="GTLIC">GTLIC</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Position</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" name="position">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Date</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" name="date" value="<?php echo date('Y-m-d'); ?>">
            </div>
          </div>
          <hr>

          <div class="form-group">
            <label class="control-label col-sm-2">PC UNIT/LAPTOP</label>
            <input type="hidden" class="form-control" name="item" value="PC UNIT/LAPTOP">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status" placeholder="Status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Monitor</label>
            <input type="hidden" class="form-control" name="item2" value="Monitor">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description2" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived2" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status2" placeholder="Status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Keyboard</label>
            <input type="hidden" class="form-control" name="item3" value="Keyboard">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description3" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived3" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status3" placeholder="Status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Mouse</label>
            <input type="hidden" class="form-control" name="item4" value="Mouse">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description4" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived4" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status4" placeholder="Status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">AVR/UPS</label>
            <input type="hidden" class="form-control" name="item5" value="AVR/UPS">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description5" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived5" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status5" placeholder="Status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Headset</label>
            <input type="hidden" class="form-control" name="item6" value="Headset">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description6" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived6" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status6" placeholder="Status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Printer</label>
            <input type="hidden" class="form-control" name="item7" value="Printer">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description7" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived7" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status7" placeholder="Status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">Scanner</label>
            <input type="hidden" class="form-control" name="item8" value="Scanner">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description8" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived8" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status8" placeholder="Status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2">SWITCH HUB</label>
            <input type="hidden" class="form-control" name="item9" value="SWITCH HUB">
            <div class="col-sm-3">
              <input type="text" class="form-control" name="description9" placeholder="Description">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="date_arrived9" placeholder="Date Arrived">
            </div>
            <div class="col-sm-3">
              <input type="text" class="form-control" name="status9" placeholder="Status">
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
</div>

