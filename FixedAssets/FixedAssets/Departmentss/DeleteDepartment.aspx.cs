using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Departmentss
{
    public partial class DeleteDeparment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteCommand = $"delete from departments where id='{TextBoxId.Text}'";
            int cant = SqlDataSource1.Delete();
            if (cant == 1)
                Label1.Text = "Departamento eliminado!";
            else
                Label1.Text = "No existe un departamento con ese id ";
            TextBoxId.Text = "";
            LabelNombre.Text = "";
            LabelDescription.Text = "";
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            SqlDataSource1.SelectCommand = $"select * from departments where id='{TextBoxId.Text}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                LabelNombre.Text = (string)datos["name"];
                LabelDescription.Text = (string)datos["description"];
            }
            else
                Label1.Text = "No existe un departamento con ese id";
        }
    }
}