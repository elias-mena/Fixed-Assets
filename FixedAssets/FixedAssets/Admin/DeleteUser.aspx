<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="FixedAssets.Admin.DeleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- Bootstrap Icons -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" href="../Content/styles.css"/>
    <title>Delete User</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">
          <img src="../Images/Logo.png" alt="Logo" width="90" height="50" class="d-inline-block align-text-top"/>
          Save Assets
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Departmentss/Departments.aspx" CssClass="nav-link active">Departamentos</asp:HyperLink>
              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Assets/Assets.aspx" CssClass="nav-link active">Activos</asp:HyperLink>
              <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Inventory/Inventory.aspx" CssClass="nav-link active">Inventario</asp:HyperLink>

          </div>
        </div>
      </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container-fluid">
                    
            <div class="modal-dialog" style="width: 700px">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">
                    Información del Usuario: 
                </h5>
                </div>
                <div class="modal-body d-flex">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                                    
                    <label for="TextBoxUsername" class="sr-only">Nombre de Usuario</label>
                    <asp:TextBox
                        ID="TextBoxUsername" runat="server" CssClass="form-control" 
                        placeholder="Nombre de Usuario" required />
                        <asp:Button ID="ButtonSearch" runat="server" Text="Button" OnClick="ButtonSearch_Click" CssClass="btn btn-primary mt-2"/>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </li>

                                
                    <li class="list-group-item">
                        <label for="TextBoxName" class="sr-only">Nombre Completo:

                        </label>
                        <br />
                        <asp:Label ID="LabelNombre" runat="server" Text="Label"></asp:Label>
                                    
                    </li>
            
                    <li class="list-group-item">
                        <label for="TextBoxId" class="sr-only">Cedula:</label>
                        <br />                        
                        <asp:Label ID="LabelId" runat="server" Text="Label"></asp:Label>                                
                    </li>
                </ul>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="ButtonDelete" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="ButtonDelete_Click"/>
                <button type="button" class="btn btn-secondary">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Admin.aspx">Volver</asp:HyperLink>
 
                </button>
                </div>
            </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>"></asp:SqlDataSource>
    </form>
</body>
</html>
