<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditAsset.aspx.cs" Inherits="FixedAssets.Assets.EditAsset" %>

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
    <title>Edit Department</title>
</head>
<body>

 <form id="form1" runat="server">
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
            <a class="nav-link active" aria-current="page" href="~/Departmentss/Departments.aspx">Departamentos</a>
            <a class="nav-link active" href="~/Assets/Assets.aspx">Activos</a>
            <a class="nav-link active" href="~/Inventory/Inventory.aspx">Inventario</a>
          </div>
        </div>
      </div>
    </nav>
        <div class="container-fluid">
                    
                        <div class="modal-dialog" style="width: 700px">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">
                                Información del Activo: 
                            </h5>
                            </div>
                            <div class="modal-body d-flex">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                <label for="TextBoxId" class="sr-only">ID</label>
                                <asp:TextBox
                                    ID="TextBoxId" runat="server" CssClass="form-control" 
                                    placeholder="ID" required />
                                    <asp:Button ID="ButtonSearch" runat="server" Text="Button" OnClick="ButtonSearch_Click" CssClass="btn btn-primary mt-2"/>
                                    
                                    
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </li>
                                
                                <li class="list-group-item">
                                                         
                                    <label for="TextBoxName" class="sr-only">Nombre</label>
                                    <asp:TextBox
                                        ID="TextBoxName" runat="server" CssClass="form-control" 
                                        placeholder="Nombre del Activo"  />
                                </li>    
                                
                                <li class="list-group-item">
                                <label for="DropDownCategory" class="sr-only">Categoría</label><br />
                                <asp:DropDownList ID="DropDownCategory" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" CssClass="form-select"></asp:DropDownList>

                                </li>
                                
                                <li class="list-group-item">
                                    
                                    <label for="TextBoxDescription" class="sr-only">Descripción</label>
                                    <asp:TextBox
                                        ID="TextBoxDescription" runat="server" CssClass="form-control" 
                                        placeholder="Descripción"  />
                                    </li>  
                                
                                    
                            </ul>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="ButtonSave" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="ButtonSave_Click"/>
                            <button type="button" class="btn btn-secondary">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Assets/Assets.aspx">Volver</asp:HyperLink>
 
                            </button>
                            </div>
                        </div>
                        </div>
                    </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>" SelectCommand="SELECT id, name FROM assets.&quot;public&quot;.asset_categories"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>"></asp:SqlDataSource>
    </form>
</body>
</html>