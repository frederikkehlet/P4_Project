using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webForm
{
    public partial class MyWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string email = emailTextBox.Text;
            string password = passwordTextBox.Text; //needs to be encrypted first
            string firstName = firstNameTextBox.Text;
            string lastName = lastNameTextBox.Text;
            int phoneNumber = Convert.ToInt32(phoneTextBox.Text);

            // create a student object using constructor
            Student student = new Student(firstName,lastName,email,phoneNumber,password);

            // create the user in db
            student.UserCreated();

            //Feedback after submission
            feedback.Text = "User registered";
        }
    }
}