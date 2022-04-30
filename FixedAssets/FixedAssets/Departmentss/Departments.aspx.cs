using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Departmentss
{
    public partial class Departments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommand = $"insert into departments (name,description) values ('{TextBoxName.Text}','{TextBoxDescription.Text}')";
            SqlDataSource1.Insert();
        }
    }
}