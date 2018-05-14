using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

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
                string query = "SELECT * FROM ad WHERE user_id = " + Student.ID + ";";

                DBConnect connection = new DBConnect();
                DataTable dt = new DataTable();
                connection.DbDataConn(query).Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }

            FirstNameLiteral.Text = Student.FirstName;
            LastNameLiteral.Text = Student.LastName;
            EmailLiteral.Text = Student.Email;
            PhoneLiteral.Text = Convert.ToString(Student.Phone);

        }
        
        
        protected void Delete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int ad_id = Convert.ToInt32(btn.ID);

            Ad ad = new Ad();
            ad.AdDeleted(ad_id);
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            Student std = new Student();
            std.UserDeleted();
            Response.Redirect("~/Login.aspx");
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            if (Firstname.Text == "")
                Student.FirstName = FirstNameLiteral.Text;
            else
                Student.FirstName = Firstname.Text;

            if (Lastname.Text == "")
                Student.LastName = LastNameLiteral.Text;
            else
                Student.LastName = Lastname.Text;

            if (Email.Text == "")
                Student.Email = EmailLiteral.Text;
            else
                Student.Email = Email.Text;

            if (Phonenumber.Text == "")
                Student.Phone = Convert.ToInt32(PhoneLiteral.Text);
            else
                Student.Phone = Convert.ToInt32(Phonenumber.Text);

            Student std = new Student();
            std.UserEdited(Student.FirstName,Student.LastName,Student.Email,Student.Phone);

            // refresh page
            Response.Redirect("~/Userpage.aspx");
        }

    }
}
