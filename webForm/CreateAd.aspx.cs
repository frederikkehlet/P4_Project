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
            float price = float.Parse(Price.Text);
            int year = int.Parse(Year.Text);
            string description = Description.Text;
            int user_id = Convert.ToInt32(Session["user"]);

            string filePath = Server.MapPath(FileUpload.FileName);
            Feedback.Text = filePath;

            if (!FileUpload.HasFile)
            {
                Label1.Visible = true;
                Label1.Text = "Please Select Image File";    //checking if file uploader has no file selected
            }
            else
            {
                int length = FileUpload.PostedFile.ContentLength;
                byte[] pic = new byte[length];


                FileUpload.PostedFile.InputStream.Read(pic, 0, length);

                try
                {
                    DBConnect connection = new DBConnect();
                    connection.insertAd(pic, title, year, type, price, description, user_id);
                    
                    Label1.Visible = true;
                    Label1.Text = "Image Uploaded Sucessfully";  //after Sucessfully uploaded image

                   string str = connection.getPic(user_id);

                    Image1.ImageUrl = "data:Image/png;base64," + str;
                }
                catch(Exception em)
                {
                    Feedback.Text = em.Message;
                }


            }
            //Bitmap j = new Bitmap(filePath);

            //j.Save(@"C:\test.jpg", ImageFormat.Jpeg);

            //image.Save(@"~\test.jpeg", ImageFormat.Jpeg);

            //Response.WriteFile(fileName);
            //Response.ContentType = "image/png";

            // how to DB?


            //Kan fjerne if og flytte det her ned, burde give samme resultalt.
        }
    }
}