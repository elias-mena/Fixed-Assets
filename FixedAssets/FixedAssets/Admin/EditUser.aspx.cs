using FixedAssets.Auth;
using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Admin
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {

            SqlDataSource1.UpdateCommand = $"update users set username = '{TextBoxUsername.Text}', first_name='{TextBoxName.Text}',"+
            $" last_name='{ TextBoxLastName.Text}', id='{ TextBoxId.Text}', email = '{TextBoxEmail.Text}'"+
                $"where username='{TextBoxUsername.Text}'";
            int cant = SqlDataSource1.Update();
            if (cant > 0)
            {
                Label1.Text = "Usuario Actualizado!";
            }
            else
            {
                Label1.Text = "Error al actualizar el usuario";
            }

        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            SqlDataSource1.SelectCommand = $"select * from users where username='{TextBoxUsername.Text}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                TextBoxUsername.Text = (string)datos["username"];
                TextBoxName.Text = (string)datos["first_name"]; ;
                TextBoxLastName.Text = (string)datos["last_name"]; ;
                TextBoxId.Text = (string)datos["id"]; ;
                TextBoxEmail.Text = (string)datos["email"];
            }
            else
                Label1.Text = "No existe un usuario con ese nombre";
        }
    }
}