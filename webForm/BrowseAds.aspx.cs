using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace webForm
{
    public partial class BrowseAds : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                DBConnect connection = new DBConnect();
                string query = "SELECT * FROM ad WHERE user_id != " + Student.ID + ";";
                List<Ad> ads = connection.SelectAd(query);

                int id = 1;

                foreach (var ad in ads)
                {
                    Panel panel = new Panel();

                    Image img = new Image();

                    byte[] image = ad.Image;

                    string strBase64 = Convert.ToBase64String(image);

                    img.ImageUrl = "data:Image/png;base64," + strBase64;
                    img.Height = 200;
                    img.Width = 200;
                    img.ID = Convert.ToString(id);
                    panel.Controls.Add(img);
                    id++;
                }
            }
        }
    }
}