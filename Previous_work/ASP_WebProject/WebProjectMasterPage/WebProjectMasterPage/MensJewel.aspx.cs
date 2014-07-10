using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectMasterPage
{
    public partial class MensJewel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkButton_Click(object sender, EventArgs e)
        {
            string paypalCall = "https://www.paypal.com/cgi-bin/webscr?cmd=_cart&business=AnkanirJewellers@gmail.com&item_name=";
            Label prodName = (Label)GridView1.SelectedRow.FindControl("lblName");
            paypalCall += prodName.Text;
            paypalCall += "&amount=";
            Label prodPrice = (Label)GridView1.SelectedRow.FindControl("lblPrice");
            decimal amount = Convert.ToDecimal(prodPrice.Text);
            paypalCall += String.Format("{0:0.00} ", amount);
            paypalCall += "&currency=CAD&on0=Color&os0=White&add=1&cancel_return=http://www.example.com&shopping_url=http://www.example.com/Welcome-Back-p33/&return=http://www.example.com";

            Response.Redirect(paypalCall);
        }

      
    }
}