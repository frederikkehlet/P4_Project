﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void loginClick(object sender, EventArgs e)
        {
            DBConnect connection = new DBConnect();

            string email = inputEmail.Text;
            string password = inputPassword.Text;

            string query = "SELECT * FROM users WHERE email = '" + email + "' AND password = '" + password + "';";
            List<string> result = connection.Select(query);

            if (result.Count == 0) queryResult.Text = "Login failed";
            else
            {
                Session["user"] = result[0];
                Response.Redirect("~/Default.aspx");
                /* hvis der er resultater, videresendes brugeren til main page */
            }   
        }
    }
}