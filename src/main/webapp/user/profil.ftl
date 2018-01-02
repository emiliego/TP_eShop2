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
      <label for="inputFirstName">First name</label>
      <input type="text" class="form-control" id="inputFirstName" placeholder="${account.getFirstName()}">
    </div>
    <div class="form-group col-md-6">
      <label for="inputLastName">Last name</label>
      <input type="text" class="form-control" id="inputLastName" placeholder="${account.getLastName()}">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <#if (account.getAddress())??>
    <input type="text" class="form-control" id="inputAddress" placeholder="${account.getAddress()}">
    <#else>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
    </#if>
  </div>
  <div class="form-row">
      <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <#if (account.getZip())??>
      <input type="text" class="form-control" id="inputZip" placeholder="${account.getZip()}">
          <#else>
    <input type="text" class="form-control" id="inputZip" placeholder="zip">
    </#if>
      
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
            <#if (account.getCity())??>
      <input type="text" class="form-control" id="inputCity" placeholder="${account.getCity()}">
          <#else>
    <input type="text" class="form-control" id="inputCity" placeholder="City">
    </#if>
      
    </div>
    <div class="form-group col-md-4">
       <label for="inputZip">Phone number</label>
             <#if (account.getPhone())??>
      <input type="text" class="form-control" id="inputPhone" placeholder="${account.getPhone()}">
          <#else>
    <input type="text" class="form-control" id="inputPhone" placeholder="0123456789">
    </#if>
 
    </div>
  </div>

  <button type="submit" class="btn btn-primary">Save</button>
</form>

    </div>

</@mp.page>
