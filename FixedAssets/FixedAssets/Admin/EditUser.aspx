<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="FixedAssets.Admin.EditUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <!-- Bootstrap CSS -->
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
    <title>Admin</title>
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
                                    <label for="TextBoxName" class="sr-only">Nombre Completo</label>
                                    <asp:TextBox
                                        ID="TextBoxName" runat="server" CssClass="form-control" 
                                        placeholder="Nombre Completo" autofocus/>
                                    
                                </li>
                                <li class="list-group-item">
                                    <label for="TextBoxLastName" class="sr-only">Apellidos</label>
                                    <asp:TextBox
                                        ID="TextBoxLastName" runat="server" CssClass="form-control" 
                                        placeholder="Apellidos" autofocus/>
                                </li>
            
                                <li class="list-group-item">
                                    <label for="TextBoxId" class="sr-only">Cedula</label>
                                    <asp:TextBox
                                        ID="TextBoxId" runat="server" CssClass="form-control" 
                                        placeholder="Cedula" autofocus/>                                    
                                </li>
            

                                <li class="list-group-item">
                                    <label for="TextBoxEmail" class="sr-only">Email</label>
                                    <asp:TextBox
                                        ID="TextBoxEmail" runat="server" CssClass="form-control" 
                                        placeholder="Email" type="email" autofocus/>
                                </li>

                                <li class="list-group-item">Foto: <asp:TextBox
                                    ID="TextBoxFoto" runat="server" CssClass="form-control" 
                                    type="file"/></li>
                            </ul>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="ButtonSave" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="ButtonSave_Click"/>
                            <button type="button" class="btn btn-secondary">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Admin.aspx">Volver</asp:HyperLink>
 
                            </button>
                            </div>
                        </div>
                        </div>
                    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>"></asp:SqlDataSource>
    </form>
    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <p class="col-md-4 mb-0 text-muted">© 2021 Company, Inc</p>

        <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
          <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <ul class="nav col-md-4 justify-content-end">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Ayuda</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Consultas</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Acerca de la App</a></li>
        </ul>
      </footer>
</body>
</html>
