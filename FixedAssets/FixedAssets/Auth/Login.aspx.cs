using FixedAssets.Auth;
using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string username = TextBoxUsername.Text;
            string password = TextBoxPassword.Text;

            SqlDataSource1.SelectCommand = $"select * from users where username='{username}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                if (new Crypt().Encrypt(password) == (string)datos["password"])
                {
                    if(username=="admin")
                        Server.Transfer("~/Admin/Admin.aspx", true);
                    else
                        LabelAlert.Text = "Bienvenido!";
                }
                else
                    LabelAlert.Text = "La clave es incorrecta";
            }
            else
                LabelAlert.Text = "No existe un usuario con ese código";


        }
    }
}