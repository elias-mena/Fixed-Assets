using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Assets
{
    public partial class DeleteAsset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteCommand = $"delete from assets where id = '{TextBoxId.Text}'";
            int cant = SqlDataSource1.Delete();
            if (cant == 1)
                Label1.Text = "Activo eliminado!";
            else
                Label1.Text = "No existe activo con ese id ";
            TextBoxId.Text = "";
            LabelNombre.Text = "";
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = $"select * from assets where id='{TextBoxId.Text}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                LabelNombre.Text = (string)datos["name"];
            }
            else
                Label1.Text = "No existe activo con ese id";
        }
    }
}