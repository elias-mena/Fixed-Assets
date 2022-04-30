using FixedAssets.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            string username = TextBoxUsername.Text;
            string name = TextBoxName.Text;
            string lastname = TextBoxLastName.Text;
            string id = TextBoxId.Text;
            string birthdate = TextBoxDate.Text;
            string email = TextBoxEmail.Text;
            string password = new Crypt().Encrypt(TextBoxPassword.Text);


            SqlDataSource1.InsertCommand = $"insert into users values ('{id}','{username}','{name}','{lastname}','{email}','{password}','{birthdate}')";
            SqlDataSource1.Insert();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Admin/Delete.aspx", true);
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Admin/EditUser.aspx", true);
        }
    }
}