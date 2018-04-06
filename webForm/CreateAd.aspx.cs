using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webForm
{
    public partial class CreateAd : System.Web.UI.Page
    {
        /*
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        */
        protected void Created_Click(object sender, EventArgs e)
        {
            string title = Title.Text;
            string type = BookType.SelectedValue;
            string price = Price.Text;
            string description = Description.Text;
            string Image = FileUpload1.FileName;

            // how to DB?
            Feedback.Text = "Your ad has been created";
            //Kan fjerne if og flytte det her ned, burde give samme resultalt.
        }
    }
}