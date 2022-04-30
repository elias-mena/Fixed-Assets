using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Auth
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            string username = TextBoxUsername.Text;
            string name = TextBoxName.Text;
            string lastname = TextBoxLastName.Text;
            string id = TextBoxId.Text;
            string birthdate = TextBoxDate.Text;
            string email = TextBoxEmail.Text;
            string password = new Crypt().Encrypt(TextBoxPassword.Text);
            string cpassword = TextBoxConfirmPassword.Text;


            SqlDataSource1.InsertCommand = $"insert into users values ('{id}','{username}','{name}','{lastname}','{email}','{password}','{birthdate}')";
            SqlDataSource1.Insert();
            LabelAlert.Text = $"Usuario Agregado!";
            Server.Transfer("~/Inventory/Inventory.aspx", true);
        }
    }
}