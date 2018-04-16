using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

namespace webForm
{
    public partial class CreateAd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        
        protected void Created_Click(object sender, EventArgs e)
        {
            string title = Title.Text;
            string type = BookType.SelectedValue;
            string price = Price.Text;
            string description = Description.Text;
            string filePath = Server.MapPath(FileUpload.FileName);
            Feedback.Text = filePath;

            Bitmap j = new Bitmap(filePath);

            j.Save(@"C:\test.jpg", ImageFormat.Jpeg);
            
            //image.Save(@"~\test.jpeg", ImageFormat.Jpeg);

            //Response.WriteFile(fileName);
            //Response.ContentType = "image/png";

            // how to DB?
            
            
            //Kan fjerne if og flytte det her ned, burde give samme resultalt.
        }
    }
}