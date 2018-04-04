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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                String title = Title.Text;
                String type = Booktype.SelectedValue;
                String price = Price.Text;
                String description = Description.Text;
                String upload = Picture.FileName;
                // how to DB?
                Feedback.Text = "Your ad has been created";
            }
        }

        protected void Created_Click(object sender, EventArgs e)
        {
            //Kan fjerne if og flytte det her ned, burde give samme resultalt.
        }
    }
}