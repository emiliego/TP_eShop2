<#import "../masterpage.ftl" as mp />

<#assign css = "
<!-- test -->
">

<@mp.page title="My profil" css=css>

    <h2>My information</h2>

    <div>
    
    <form method="post">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">First name</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="First name">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Last name</label>
      <input type="text" class="form-control" id="inputPassword4" placeholder="Last name">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="form-row">
      <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip" placeholder="zip">
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" placeholder="City">
    </div>
    <div class="form-group col-md-4">
       <label for="inputZip">Phone number</label>
      <input type="text" class="form-control" id="inputPhone" placeholder="0123456789">
    </div>
  </div>

  <button type="submit" class="btn btn-primary">Save</button>
</form>

    </div>

</@mp.page>
