using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webForm
{
    public partial class Userpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                DBConnect connection = new DBConnect();
                string query = "Select * FROM users WHERE user_id = " + Session["user_id"] + ";";
                List<string> users = connection.SelectUser(query);

            }
        }



    }
}