<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assets.aspx.cs" Inherits="FixedAssets.Assets.Assets" %>

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
    <title>Assets</title>
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
            <a class="nav-link active" aria-current="page" href="#">Departamentos</a>
            <a class="nav-link active" href="#">Activos</a>
            <a class="nav-link active" href="#">Inventario</a>
          </div>
        </div>
      </div>
    </nav>
    <form id="form1" runat="server">
        <div>
            <h2 class="m-3">Activos</h2>
        <div class="container-fluid d-flex justify-content-end">
                   
        <button type="button" class="btn btn-success m-3" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
          Agregar Activo
        </button>

        <button type="button" class="btn btn-primary m-3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Assets/EditAsset.aspx">Editar Activo</asp:HyperLink>
        </button>

        <button type="button" class="btn btn-danger m-3">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Assets/DeleteAsset.aspx">Eliminar Activo</asp:HyperLink>
        </button>

      </div>
      <br/>
            <div class="container-fluid">
                <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover table-dark table-striped">
                    <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                    <asp:BoundField DataField="name" HeaderText="Nombre" SortExpression="name" />
                    <asp:BoundField DataField="description" HeaderText="Descripción" SortExpression="description" />
                    <asp:BoundField DataField="categorie" HeaderText="Categoría" SortExpression="categorie" />
                    </Columns>

                
                    
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>" SelectCommand="SELECT ast.id, ast.name, ast.description, c.name AS categorie FROM assets.&quot;public&quot;.assets ast, assets.&quot;public&quot;.asset_categories c WHERE ast.category = c.id"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>" SelectCommand="SELECT id, name FROM assets.&quot;public&quot;.asset_categories"></asp:SqlDataSource>
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
                                Información del Activo: 
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
                                    
                                <label for="TextBoxName" class="sr-only">Nombre del Activo</label>
                                <asp:TextBox
                                    ID="TextBoxName" runat="server" CssClass="form-control" 
                                    placeholder="Nombre del Activo" required />   
                                </li>
                                
                                <li class="list-group-item">
                                    <label for="TextBoxDescription" class="sr-only">Descripción</label>
                                    <asp:TextBox
                                        ID="TextBoxDescription" runat="server" CssClass="form-control" 
                                        placeholder="Descripción del Activo" required autofocus/>
                                    
                                </li>
                            <li class="list-group-item">
                                <label for="DropDownCategory" class="sr-only">Categoría</label><br />
                                <asp:DropDownList ID="DropDownCategory" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" CssClass="form-select"></asp:DropDownList>

                            </li>
          
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
