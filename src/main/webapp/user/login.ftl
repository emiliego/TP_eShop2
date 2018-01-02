<#import "../masterpage.ftl" as mp />
<@mp.page title="Connexion">

<div class="field_login">
  <h2>Login to your account</h2>
      <form action="connexion" method="post">
                <input type="text" name="firstName" placeholder="First name" class="name">
                <input type="text" name="lastName" placeholder="Last name" class="name">
                <input type="submit" value="Log in" class="login_submit">
            </form>
          </div>

  
</@mp.page>