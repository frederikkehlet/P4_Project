using System;
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
        private string Hash(string inputPassword)
        {
            {
                string source = inputPassword;
                using (MD5 md5Hash = MD5.Create())
                {
                    string hash = GetMd5Hash(md5Hash, source);
                    return hash;
                }
            }


        }
        static string GetMd5Hash(MD5 md5Hash, string input)
        {

            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));
            StringBuilder sBuilder = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginClick(object sender, EventArgs e)
        {
            DBConnect connection = new DBConnect();

            string email = inputEmail.Text;
            string password = inputPassword.Text;

            string query = "SELECT * FROM users WHERE email = '" + email +"';";
            List<string> result = connection.Select(query); 

            
            using (MD5 md5Hash = MD5.Create())
            {
                string hash = GetMd5Hash(md5Hash, password);

                if (hash == result[5])
                {
                    Session["user"] = result[0];
                    Response.Redirect("~/Default.aspx");
                    /* hvis der er resultater, videresendes brugeren til main page */
                }
                else
                {
                    queryResult.Text = "Login failed";
                }
            }
        }
    }
}