<#import "../masterpage.ftl" as mp />
<@mp.page title="Order summary">

	<script  language="JavaScript">
		function printContent(el){
			var restorepage = document.body.innerHTML;
			var printcontent = document.getElementById(el).innerHTML;
			document.body.innerHTML = printcontent;
			window.print();
			document.body.innerHTML = restorepage;
		}
	</script>
	
  <a href="/order/list"><button type="submit" class="btn btn-danger" style="margin-bottom:15px;"><i class="fas fa-arrow-circle-left"></i> Back to my orders</button></a>
  
  <button type="button" class="btn btn-info print" onclick="printContent('print')"><i class="fas fa-print"></i> Print this page</button>
   
   <div id="print">
   
    <h2 style="margin-bottom:30px;">Order summary </h2>
    <table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">Article</th>
      <th scope="col">Description</th>
      <th scope="col">Quantity</th>
      <th scope="col">Unit price</th>
      <th scope="col"> </th>
    </tr>
  </thead>

  <tbody>

    <tr>
      <th scope="row">TODO</th>
      <td>TODO</td>
      <td>TODO</td>
      <td>TODO</td>
      <td title="Delete"><i class="fas fa-window-close delete"></i></td>
    </tr>
  </tbody>
</table>

<#if (order.total)??>
<div class="totalPrice">Total : ${order.total} $</div>
<#else>
<div class="totalPrice">Total :ERROR</div>
</#if>
</div>

          <button type="submit" class="btn btn-success">Pay</button>


    </div>
    </table>
</@mp.page>