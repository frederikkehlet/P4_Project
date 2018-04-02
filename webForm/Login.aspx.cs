using System;
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
            string email = inputEmail.Text;
            string password = inputPassword.Text;

            DBConnect connection = new DBConnect();
            string query = "SELECT * FROM users WHERE email = '" + email + "' AND password = '" + password + "';";
            string result = connection.Select(query);

            if (result == "") queryResult.Text = "No results found";
            else
            {
                /* hvis der er resultater, videresendes brugeren til main page */
            }    
        }
    }
}