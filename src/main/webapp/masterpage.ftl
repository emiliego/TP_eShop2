<#macro page title js="" css="">
<!DOCTYPE HTML>
<html>

  <head>
    <title>${title?html}</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <link rel="stylesheet" href="/lib/style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
      integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
      crossorigin="anonymous">

  </head>

  <body>
<ul class="nav justify-content-end bg-dark">
<#if (account)??>
        <li class="nav-item">
          <a class="nav-link active account" href="/user/profil">
            <i class="fas fa-user-circle"></i> My account</a>
      </li>
      <li class="nav-item">
          <a class="nav-link active account" href="/order/list">
            <i class="fas fa-shopping-basket"></i> My orders</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active account" href="/user/logout">
          <i class="fas fa-user-times"></i> Log out</a>
  </li>
<#else>
        <li class="nav-item">
          <a class="nav-link active account" href="/user/login">
            <i class="far fa-user"></i> Log in</a>
    </li>
</#if>

    </ul>
    <h1><a href="/home/index">eShop</a></h1>

    <main role="main" class="container">

      <#nested />

    </main>
    <!-- /.container -->

<footer class="bg-dark footer">
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h5> About</h5>
      <ul>
        <li><a href="#">Conditions of Use</a></li>
        <li><a href="#">Legal Notices</a></li>
      </ul>
    </div>
    <div class="col-sm-4">
      <h5> Help & returns</h5>
      <ul>
        <li><a href="#">Returns & replacements</a></li>
        <li><a href="#">Let us help you</a></li>
      </ul>
    </div>
    <div class="col-sm-4">
      <h5> The compagny</h5>
      <ul>
        <li><a href="#">Information</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </div>
  </div>
  <div class="socialnetwork">
    <a href="#" title="Facebook"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
    <a href="#" title="Twitter"><i class="fab fa-twitter" aria-hidden="true"></i></a>
    <a href="#" title="YouTube"><i class="fab fa-youtube" aria-hidden="true"></i></a>
    <a href="#" title="Instagram"><i class="fab fa-instagram" aria-hidden="true"></i></a>
    <a href="#" title="Snapchat"><i class="fab fa-snapchat" aria-hidden="true"></i></a>
  </div>
  </div>
</footer>
<script defer src="https://use.fontawesome.com/releases/v5.0.2/js/all.js"></script>
    <!-- Bootstrap core JavaScript ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
      integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
      crossorigin="anonymous"></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
      integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
      crossorigin="anonymous"></script>
    ${js}
  </body>
</html>
</#macro>
