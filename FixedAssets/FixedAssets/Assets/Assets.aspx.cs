using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Assets
{
    public partial class Assets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            int categorie = DropDownCategory.SelectedIndex+1;
            SqlDataSource1.InsertCommand = $"insert into assets (name, description, category) values ('{TextBoxName.Text}','{TextBoxDescription.Text}',{categorie})";
            SqlDataSource1.Insert();
        }
    }
}