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
            if (!FileUpload.HasFile)
            {
                ImageFeedback.Visible = true;
                ImageFeedback.Text = "<span style='color:red;'>Please Select Image File</span>";    //checking if file uploader has no file selected
            }
            else
            {
                try
                {
                    // else create an ad object and store it in the db
                    string title = Title.Text;
                    string type = BookType.SelectedValue;
                    float price = float.Parse(Price.Text);
                    int year = int.Parse(Year.Text);
                    string description = Description.Text;
                    int user_id = Convert.ToInt32(Session["user"]);
                    int length = FileUpload.PostedFile.ContentLength;
                    byte[] pic = new byte[length];
                    FileUpload.PostedFile.InputStream.Read(pic, 0, length);

                    // instantiate the ad object and create it
                    Ad ad = new Ad(title, year, type, price, description, pic, Student.ID);
                    ad.CreateAd();

                    ImageFeedback.Visible = true;
                    ImageFeedback.Text = "<span style='color:green;'>Image Uploaded Sucessfully</span>";  //after Sucessfully uploaded image

                    DBConnect connection = new DBConnect();
                    string str = connection.getPic(user_id);
                    Image1.ImageUrl = "data:Image/png;base64," + str;
                }
                catch (Exception em)
                {
                    Feedback.Text = em.Message;
                }
            }
        }
    }
}