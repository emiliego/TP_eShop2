<#import "../masterpage.ftl" as mp />

<#assign css = "
<!-- test -->
">

<@mp.page title="Home" css=css>

    <h2>Best Products</h2>
<div class="row">
<div class="col-md-4" style="text-align:center; margin: 25px 0px;">
<img src="http://via.placeholder.com/250x250">
<h4>Name of the product</h4></div>
<div class="col-md-4" style="text-align:center; margin: 25px 0px;">
<img src="http://via.placeholder.com/250x250">
<h4>Name of the product</h4></div>
<div class="col-md-4" style="text-align:center; margin: 25px 0px;">
<img src="http://via.placeholder.com/250x250">
<h4>Name of the product</h4></div>
</div>
    <div class="View_products">
  <a href="/product/index">View all products</a>
  </div>

</@mp.page>
