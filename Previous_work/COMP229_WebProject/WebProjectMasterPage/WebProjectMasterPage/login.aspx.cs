using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectMasterPage
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String id = "ankanir@gmail.com";
            String pass = "password123";

            if (txtid.Text == id && txtpass.Text == pass)
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(typeof(Page), "alert", "<script language=JavaScript>alert('" + "Login or Password is Incorrect Please try again!!! " + "');</script>");
            }
        }
    }
}