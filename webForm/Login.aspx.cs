﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // set the session to null when the user is on the login page
            Session["user"] = null;
        }

        protected void loginClick(object sender, EventArgs e)
        {
            DBConnect connection = new DBConnect();

            string email = inputEmail.Text;
            string password = inputPassword.Text;

            Hash hash = new Hash();

            string hashpwd = hash.GetMd5Hash(password);

            string query = "SELECT * FROM users WHERE email = '" + email + "';";
            List<string> result = connection.SelectUser(query);

            if (result.Count != 0)
            {
                if (hashpwd == result[5])
                {
                    /* If login is succesful, we create a static user and redirects the user to the main page */
                    Session["user"] = result[0];                   
                    Student.ID = int.Parse(result[0]);
                    Student.FirstName = result[1];
                    Student.LastName = result[2];
                    Student.Email = result[3];
                    Student.Phone = int.Parse(result[4]);

                    Response.Redirect("~/Default.aspx");                 
                }
                else
                {
                    queryResult.Text = "<span style='color:red;'>Password incorrect</span>";
                }
            }
            else
            {
                Emailerror.Text = "<span style='color:red;'> Email incorrect</span>";
            }
        }
    }
}