<#import "../masterpage.ftl" as mp />

<#assign css = "
<!-- test -->
">

<@mp.page title="Orders list" css=css>

<div class="row">

    <h2 style="margin-bottom:40px;">My Orders</h2>

  
   <table class="table table-striped table-hover">
      <thead class="thead-light">
    <tr style="text-align:center;">
        <th scope="col">Code</th>
        <th scope="col">Total </th>
      </tr>
      </thead>
      <tbody>
      <#list orders as order>
      <tr style="text-align:center;">
        <th scope="row"><a href="/order/${order.id}">ORDER_000${order.id}</a></th>
        <#if (order.total)??>
  	<td>${order.total} $</td>
  	<#else>
  	<td style="color:red;">ERROR</td>
  	</#if>

      </tr>
      </#list>
      </tbody>
    </table>
    
  </div>
</@mp.page>
