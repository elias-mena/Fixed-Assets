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

            <label for="TextBoxName" class="sr-only">Nombre</label>
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
            
            <label for="TextBoxDate" class="sr-only">Fecha de Nacimiento</label>
              <asp:TextBox
                ID="TextBoxDate" runat="server" CssClass="form-control" 
                placeholder="Fecha de Nacimiento" type="date" required autofocus/>
              
          </div>

          <div class="container-fluid">
              
            <label for="TextBoxFoto" class="sr-only">Foto</label>
            <asp:TextBox
                ID="TextBoxFoto" runat="server" CssClass="form-control" 
                type="file" autofocus/>
              
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
            <asp:Button ID="ButtonRegister" runat="server" Text="Registrarse" CssClass="mt-3 btn  btn-primary btn-block" OnClick="ButtonRegister_Click"/>
            <button type="button" class="btn btn-secondary mt-3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Auth/Login.aspx">Volver</asp:HyperLink>
 
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>"></asp:SqlDataSource>
      <asp:Label ID="LabelAlert" runat="server" Text="Label"></asp:Label>
  </body>
</html>