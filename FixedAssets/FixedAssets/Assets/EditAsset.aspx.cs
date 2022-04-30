using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Assets
{
    public partial class EditAsset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            SqlDataSource1.SelectCommand = $"select * from assets where id='{TextBoxId.Text}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                TextBoxName.Text = (string)datos["name"];
                TextBoxDescription.Text = (string)datos["description"]; 
                DropDownCategory.SelectedIndex = (int)datos["category"]-1;
            }
            else
                Label1.Text = "No existe un activo con ese id";
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateCommand = $"update assets set name = '{TextBoxName.Text}',  description='{TextBoxDescription.Text}', category={DropDownCategory.SelectedIndex + 1} where id='{TextBoxId.Text}'";
            int cant = SqlDataSource1.Update();
            if (cant > 0)
            {
                Label1.Text = "Activo Actualizado!";
            }
            else
            {
                Label1.Text = "Error al actualizar el activo";
            }
        }
    }
}