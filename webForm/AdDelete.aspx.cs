using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webForm
{
    public partial class AdDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ad_id = Convert.ToInt32(Request.QueryString["AD_ID"]);
            DBConnect connection = new DBConnect();
            Ad ad = new Ad();
            ad.AdDeleted(ad_id);
            Response.Redirect("Userpage.aspx");
        }
    }
}