using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
                string query = "Select * FROM users WHERE id = " + Student.ID + ";";
                List<string> users = connection.SelectUser(query);

                Firstname.Text = users[1];
                Lastname.Text = users[2];
                Email.Text = users[3];
                Password.Text = users[5];
                Phonenumber.Text = users[4];

                DataTable dt = new DataTable();
                connection.userAdConn().Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
        
        
        protected void Delete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int ad_id = Convert.ToInt32(btn.ID);

            Ad ad = new Ad();
            ad.AdDeleted(ad_id);
        }   
    }
}
