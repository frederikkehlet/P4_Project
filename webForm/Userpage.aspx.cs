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
                string query = "Select * FROM users WHERE id = " + Student.ID + ";";
                List<string> users = connection.SelectUser(query);

                Firstname.Text = users[1];
                Lastname.Text = users[2];
                Email.Text = users[3];
                Password.Text = users[5];
                Phonenumber.Text = users[4];
            }
        }
        /*
        protected void Onclick(object sender, EventArgs e)
        {
            DBConnect connection = new DBConnect();
            string query = "UPDATE users SET first_name = 'Firstname.Text', last_name = 'Lastname.Text', email = 'Email.txt', phone = 'Phonenumber.text', password = 'Password.text' WHERE id = " + Student.ID + ";";

        }
        */
    }
}
