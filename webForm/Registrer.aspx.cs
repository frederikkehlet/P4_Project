using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Security.Cryptography.MD5CryptoServiceProvider;

namespace webForm
{
    public partial class Registrer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
          
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            bool result = checkEmail();

            if (result)
            {
                try
                {
                    string email = emailTextBox.Text;
                    string password = MD5Hash(passwordTextBox.Text);
                    string firstName = firstNameTextBox.Text;
                    string lastName = lastNameTextBox.Text;
                    int phoneNumber = Convert.ToInt32(phoneTextBox.Text);

                    // create a student object using constructor
                    Student student = new Student(firstName, lastName, email, phoneNumber, password);

                    // create the user in db
                    student.UserCreated();

                    //Feedback after submission
                    string message = "<span style='color:green;'>User registered</span>";
                    feedback.Text = message;
                }
                catch (FormatException)
                {

                    feedback.Text = "<span style='color:red;'>Phone number invalid</span>";
                }
                catch (Exception)
                {
                    feedback.Text = "<span style='color:red;'>Something went wrong</span>";
                }
            }
            else
            {
                string message = "<span style='color:red;'>Email already exists</span>";
                EmailStatus.Text = message;
            }
            
        }

        protected bool checkEmail()
        {
            string email = emailTextBox.Text;

            DBConnect connection = new DBConnect();
            string query = "SELECT * FROM users WHERE email = '" + email + "';";
            string result = connection.Select(query);

            if (result != "") return false;
            else return true;

        }
        private string MD5Hash(string input)
        {
            using (var md5 = MD5.Create())
            {
                var result = md5.ComputeHash(Encoding.ASCII.GetBytes(input));
                var strResult = BitConverter.ToString(result);
                return strResult.Replace("-", "");
            }
        }
    }
}