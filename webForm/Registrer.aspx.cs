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
    public partial class Registrer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            bool resultEmail = checkEmail();
            bool resultPassword = checkPassword();

            if (resultEmail == true && resultPassword == true)
            {
                try
                {
                    string email = emailTextBox.Text;
                    string password = passwordTextBox.Text;
                    string firstName = firstNameTextBox.Text;
                    string lastName = lastNameTextBox.Text;
                    int phoneNumber = Convert.ToInt32(phoneTextBox.Text);

                    // create a student object using constructor
                    Student student = new Student(firstName, lastName, email, phoneNumber, password);

                    // create the user in db
                    student.UserCreated();

                    EmailStatus.Text = "";
                    phone.Text = "";

                    //Feedback after submission
                    string message = "<span style='color:green;'>User registered</span>";
                    feedback.Text = message;
                }
                catch (FormatException)
                {

                    phone.Text = "<span style='color:red;'>Phone number invalid</span>";
                }
                catch (Exception ex)
                {
                    feedback.Text = "<span style='color:red;'>" + ex.Message + "</span>";
                }
            }
            else if (resultEmail == false)
            {
                PasswordStatus.Text = "";
                string messageEmail = "<span style='color:red;'>Email already exists</span>";
                EmailStatus.Text = messageEmail;
            }
            else
            {
                EmailStatus.Text = "";
                string messagePassword = "<span style='color:red;'>Password already exists</span>";
                PasswordStatus.Text = messagePassword;
            }


            
        }

        protected bool checkEmail()
        {
            string email = emailTextBox.Text;

            DBConnect connection = new DBConnect();
            string query = "SELECT * FROM users WHERE email = '" + email + "';";
            List<string> result = connection.Select(query);

            if (result.Count != 0) return false;
            else return true;
        }

        protected bool checkPassword()
        {
            string password = passwordTextBox.Text;

            // needs hash
            Hash hash = new Hash();
            string hashedPassword = hash.GetMd5Hash(password);

            DBConnect connection = new DBConnect();

            string query = "SELECT * FROM users WHERE password = '" + hashedPassword + "';";
            List<string> result = connection.Select(query);

            if (result.Count != 0) return false;
            else return true;
        }
    }
}