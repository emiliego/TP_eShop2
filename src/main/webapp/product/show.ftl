<#import "../masterpage.ftl" as mp />
<@mp.page title="Show list">
  <a href="/product/index"><button type="submit" class="btn btn-danger">
  <i class="fas fa-arrow-circle-left"></i> Back to the shop</button></a>
  <div class="row">
    <h1>${product.name}</h1>
  </div>
    <table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">Description</th>
      <th scope="col">Unit price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>

  <tbody>

    <tr>
          <#if (product.description)??>
    	 <td>${product.description}</td>
    <#else>
    	<td>There is not a description for this product</td>
    </#if>

      <td>${product.price} $</td>
      <#if (product.quantity) == 0>
    	<td>Out of stock</td>
    <#else>
    	<td><span title="Add to cart"><i class="fas fa-cart-plus caddy"></i></span></td>
    </#if>
      
    </tr>
  </tbody>
</table>
</@mp.page>
