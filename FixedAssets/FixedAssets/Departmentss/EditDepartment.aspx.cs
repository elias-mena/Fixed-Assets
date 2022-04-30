using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Departmentss
{
    public partial class EditDepartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateCommand = $"update departments set name = '{TextBoxName.Text}',  description='{TextBoxDescription.Text}'";
            int cant = SqlDataSource1.Update();
            if (cant > 0)
            {
                Label1.Text = "Departamento Actualizado!";
            }
            else
            {
                Label1.Text = "Error al actualizar el departamento";
            }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            SqlDataSource1.SelectCommand = $"select * from departments where id='{TextBoxId.Text}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                TextBoxName.Text = (string)datos["name"];
                TextBoxDescription.Text = (string)datos["description"];

            }
            else
                Label1.Text = "No existe un departamento con ese id";
        }
    }
}