<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FixedAssets.login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../Content/styles.css">
    <title>Login</title>
  </head>

  <body>
    <div class="container">
      <form id="form1" runat="server" class="form-signin" style="max-width: 370px;">
        <h2 class="mb-3">Iniciar Sesión</h2>
        <label for="TextBoxUsername" class="sr-only">Nombre de Usuario</label>
        <asp:TextBox
            ID="TextBoxUsername" runat="server" CssClass="form-control" 
            placeholder="Nombre de Usuario" required autofocus/>

        <label for="TextBoxPassword" class="sr-only">Contraseña</label>
        <asp:TextBox type="password"
        ID="TextBoxPassword" runat="server" CssClass="form-control" 
        placeholder="Contraseña" required autofocus/>
          <asp:Button ID="ButtonLogin" runat="server" CssClass="mt-3 btn btn-lg btn-primary btn-block" Text="Ingresar" type="submit"/>
          <button type="button" class="mt-3 btn btn-lg btn-primary btn-block">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Auth/register.aspx">Registrarse</asp:HyperLink>
        </button>
      </form>
        
    </div>
    <!-- /container -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
