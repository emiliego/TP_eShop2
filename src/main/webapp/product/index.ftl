<#import "../masterpage.ftl" as mp />

<#assign css = "
<!-- test -->
">

<@mp.page title="Show list" css=css>

<div class="row">

    <h2>List of Products</h2>
    <br />
  
    <table class="table table-striped table-hover">
      <thead class="thead-light">
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Stock</th>
        <th scope="col">Price</th>
      </tr>
      </thead>
      <tbody>
      <#list products as product>
      <tr>
        <th scope="row"><a href="/product/${product.id}">${product.name}</a></th>
<#if (product.quantity)== 0>
        <td style="color:red;">Out of stock</td>
        <#else>
    	<td>${product.quantity}</td>
    </#if>
        <td>${product.price} $</td>
      </tr>
      </#list>
      </tbody>
    </table>
    
  </div>
</@mp.page>
