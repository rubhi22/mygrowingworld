using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _300586867
{
    public partial class _300586867 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToLongDateString() +"   "+ DateTime.Now.ToLongTimeString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label fName = (Label)GridView1.SelectedRow.FindControl("fName");
            Label lName = (Label)GridView1.SelectedRow.FindControl("lName");

            lbltitle.Text = "Titles by " + fName.Text + " " + lName.Text;
        }
    }
}