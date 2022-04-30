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
        <header class="p-3 mb-3 nav bg-dark ">
    <div class="container-fluid d-flex flex-row justify-content-between">
        <a class="navbar-brand link-light" href="#">Activos fijos </a>

            <div class="d-flex dropdown">
              <a
                href="#"
                class="d-block link-dark dropdown-toggle"
                id="dropdownUser1"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                <i class="bi bi-list text-white" style="font-size: 30px"></i>
              </a>
              <ul
                class="dropdown-menu text-small"
                aria-labelledby="dropdownUser1"
                style=""
              >
                        <li><a class="dropdown-item" href="">Administrar Usuarios</a></li>
                        <li><a class="dropdown-item" href="">Activos</a></li>
                        <li><a class="dropdown-item" href="">Departamentos</a></li>
                        <li><a class="dropdown-item" href="">Inventario</a></li>
                        <li><a class="dropdown-item" href="">Perfil</a></li>

                    <li><hr class="dropdown-divider" /></li>
                    <li><a class="dropdown-item" href="">Cerrar Sesión</a></li>



                    </ul>
                </div>
      </div>
</header>
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
