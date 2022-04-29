<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FixedAssets.Auth.Register" %>

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
    <link rel="stylesheet" href="../Content/styles.css" />
    <title>Register</title>
  </head>

  <body>
    <div class="container">
      <form class="form-signin" style="max-width: 600px;" id="form1" runat="server">
        <h2 class="m-3">Registrarse</h2>
        <div class="container d-flex justify-content-between">
          <div class="container-fluid">
            
            <label for="TextBoxUsername" class="sr-only">Nombre de Usuario</label>
            <asp:TextBox
                ID="TextBoxUsername" runat="server" CssClass="form-control" 
                placeholder="Nombre de Usuario" required autofocus/>

            <label for="TextBoxName" class="sr-only">Nombre Completo</label>
            <asp:TextBox
                ID="TextBoxName" runat="server" CssClass="form-control" 
                placeholder="Nombre Completo" required autofocus/>

            <label for="TextBoxLastName" class="sr-only">Apellidos</label>
            <asp:TextBox
                ID="TextBoxLastName" runat="server" CssClass="form-control" 
                placeholder="Apellidos" required autofocus/>

            <label for="TextBoxId" class="sr-only">Cedula</label>
            <asp:TextBox
                ID="TextBoxId" runat="server" CssClass="form-control" 
                placeholder="Cedula" required autofocus/>

          </div>

          <div class="container-fluid">

            <label for="TextBoxEmail" class="sr-only">Email</label>
            <asp:TextBox
                ID="TextBoxEmail" runat="server" CssClass="form-control" 
                placeholder="Email" type="email" required autofocus/>

            <label for="TextBoxPassword" class="sr-only">Contraseña</label>
            <asp:TextBox type="password"
                ID="TextBoxPassword" runat="server" CssClass="form-control" 
                placeholder="Contraseña" required autofocus/>

            <label for="TextBoxConfirmPassword" class="sr-only">Confirmar Contraseña</label>
            <asp:TextBox type="password"
                ID="TextBoxConfirmPassword" runat="server" CssClass="form-control" 
                placeholder="Contraseña" required autofocus/>

            <button class="mt-3 btn btn-lg btn-primary btn-block" type="submit">
              Registrarse
            </button>
          </div>
        </div>
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