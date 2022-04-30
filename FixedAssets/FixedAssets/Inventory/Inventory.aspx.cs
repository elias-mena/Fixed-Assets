using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Inventory
{
    public partial class Inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ButtonSave_Click1(object sender, EventArgs e)
        {
            int asset = DropDownAsset.SelectedIndex + 1;
            int department = DropDownDepartment.SelectedIndex + 1;
            string condition = DropDownCondition.SelectedValue;
            string date = TextBoxDueDate.Text;
            string buyer = DropDownBuyer.SelectedValue;
            int amount = int.Parse(TextBoxAmount.Text);
            int price = int.Parse(TextBoxUnitPrice.Text);

            SqlDataSource5.InsertCommand = $"insert into asset_inventory (asset, department, condition, due_date, buyer, amount, unit_price) " +
                $"values ({asset},{department},'{condition}','{date}','{buyer}',{amount},{price})";
            SqlDataSource5.Insert();

        }
    }
}