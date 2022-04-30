﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FixedAssets.Admin.Admin" %>

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
        <div>
            <h2 class="m-3">Usuarios</h2>
        <div class="container-fluid d-flex justify-content-end">
                   
        <button type="button" class="btn btn-success m-3" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
          <svg
              xmlns="http://www.w3.org/2000/svg"
              width="16"
              height="16"
              fill="currentColor"
              class="bi bi-person-plus"
              viewBox="0 0 16 16">
            <path
              d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"
            ></path>
            <path
              fill-rule="evenodd"
              d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"
            ></path>
          </svg>
          Agregar Usuario
        </button>

        <button type="button" class="btn btn-primary m-3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/EditUser.aspx">Editar Usuario</asp:HyperLink>
        </button>

        <button type="button" class="btn btn-danger m-3">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/DeleteUser.aspx">Eliminar Usuario</asp:HyperLink>
        </button>

      </div>
      <br/>
            <div class="container-fluid">
                <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover table-dark table-striped">
                    <Columns>
                    <asp:BoundField DataField="id" HeaderText="Cedula" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="username" HeaderText="Nombre de Usuario" SortExpression="username" />
                    <asp:BoundField DataField="first_name" HeaderText="Nombre" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="Apellido" SortExpression="last_name" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="birthdate" HeaderText="Fecha de Nacimiento" SortExpression="birthdate" />
                    </Columns>

                
                    
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>" SelectCommand="SELECT id, username, first_name, last_name, email, birthdate FROM assets.&quot;public&quot;.users"></asp:SqlDataSource>
            </div>
        </div>
                      <!-- Modal Edit -->
                <div
                    class="modal fade"
                    id="staticBackdrop"
                    data-bs-backdrop="static"
                    data-bs-keyboard="false"
                    tabindex="-1"
                    aria-labelledby="staticBackdropLabel"
                    aria-hidden="true"
                    style="color: black">
                    
                        <div class="modal-dialog" style="width: 700px">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">
                                Información del Usuario: 
                            </h5>
                            <button
                                type="button"
                                class="btn-close"
                                data-bs-dismiss="modal"
                                aria-label="Cerrar"
                            ></button>
                            </div>
                            <div class="modal-body d-flex">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    
                                <label for="TextBoxUsername" class="sr-only">Nombre de Usuario</label>
                                <asp:TextBox
                                    ID="TextBoxUsername" runat="server" CssClass="form-control" 
                                    placeholder="Nombre de Usuario" required />   
                                </li>
                                
                                <li class="list-group-item">
                                    <label for="TextBoxName" class="sr-only">Nombre Completo</label>
                                    <asp:TextBox
                                        ID="TextBoxName" runat="server" CssClass="form-control" 
                                        placeholder="Nombre Completo" required autofocus/>
                                    
                                </li>
                                <li class="list-group-item">
                                    <label for="TextBoxLastName" class="sr-only">Apellidos</label>
                                    <asp:TextBox
                                        ID="TextBoxLastName" runat="server" CssClass="form-control" 
                                        placeholder="Apellidos" required autofocus/>
                                </li>
            
                                <li class="list-group-item">
                                    <label for="TextBoxId" class="sr-only">Cedula</label>
                                    <asp:TextBox
                                        ID="TextBoxId" runat="server" CssClass="form-control" 
                                        placeholder="Cedula" required autofocus/>                                    
                                </li>
            
                                <li class="list-group-item">
                                    <label for="TextBoxDate" class="sr-only">Fecha de Nacimiento</label>
                                    <asp:TextBox
                                        ID="TextBoxDate" runat="server" CssClass="form-control" 
                                        placeholder="Fecha de Nacimiento" type="date" required autofocus/>
                                </li>

                                <li class="list-group-item">
                                    <label for="TextBoxEmail" class="sr-only">Email</label>
                                    <asp:TextBox
                                        ID="TextBoxEmail" runat="server" CssClass="form-control" 
                                        placeholder="Email" type="email" required autofocus/>
                                </li>
                                <li class="list-group-item">
                                    <label for="TextBoxPassword" class="sr-only">Contraseña</label>
                                    <asp:TextBox type="password"
                                        ID="TextBoxPassword" runat="server" CssClass="form-control" 
                                        placeholder="Contraseña" required autofocus/>
                                </li>
                                <li class="list-group-item">Foto: <asp:TextBox
                                    ID="TextBoxFoto" runat="server" CssClass="form-control" 
                                    type="file"/></li>
                            </ul>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="ButtonSave" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="ButtonSave_Click"/>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                Cerrar
                            </button>
                            </div>
                        </div>
                        </div>
                    </div>
    <div class="container-fluid">
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
    </div>
    </form>
        <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>    
</body>
</html>

