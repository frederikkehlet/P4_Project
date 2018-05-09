using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webForm
{
    public partial class AdUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowSelectedAd();
        }

        private void ShowSelectedAd()
        {
            string s = Request.QueryString["AD_ID"];
            string query = "SELECT * FROM ad WHERE ad_id = " + s + ";";

            DBConnect connection = new DBConnect();
            List<Ad> ad = connection.SelectAd(query);

            Title.Attributes.Add("value", ad[0].Title);
            Year.Attributes.Add("value", ad[0].Year.ToString());
            BookType.Items.FindByValue(ad[0].Category).Selected = true;
            Price.Attributes.Add("value", ad[0].Price.ToString());
            Description.Attributes.Add("value", ad[0].Description);
            Image.Attributes.Add("src", "data: Image / png; base64," + Convert.ToBase64String(ad[0].Image));
        }

        protected void AdUpdated_Click(object sender, EventArgs e)
        {
            string title = Title.Text;
            int year = Convert.ToInt32(Year.Text);
            string category = BookType.SelectedValue;
            float price = float.Parse(Price.Text);
            string description = Description.Text;
            int length = FileUpload.PostedFile.ContentLength;
            byte[] pic = new byte[length];

            if (length == 0)
            {
                string s = Request.QueryString["AD_ID"];
                string query = "SELECT * FROM ad WHERE ad_id = " + s + ";";

                DBConnect connection = new DBConnect();
                List<Ad> adImage = connection.SelectAd(query);
                pic = adImage[0].Image;
            }
            FileUpload.PostedFile.InputStream.Read(pic, 0, length);

            Ad ad = new Ad(title, year, category, price, description, pic, Student.ID);
            ad.AdEdited();
            // refresh after update
            Response.Redirect("~/Userpage.aspx");
        }
    }
}