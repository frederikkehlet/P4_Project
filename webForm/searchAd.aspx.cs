using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Reflection;
using MySql.Data.MySqlClient;

namespace webForm
{
    public partial class searchAd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            Search search = new Search();
            DataTable dt = new DataTable();
            search.SearchFunction(searchBox.Text).Fill(dt);

            DataListSearch.DataSource = dt;
            DataListSearch.DataBind();

            /*
            dt.Columns.Add("image", typeof(byte[]));
            dt.Columns.Add("title", typeof(string));
            dt.Columns.Add("price", typeof(float));
            dt.Columns.Add("year", typeof(int));
            dt.Columns.Add("category", typeof(string));
            dt.Columns.Add("description", typeof(string));
            
            foreach (var ad in sortedAd)
            {                
                DataRow dr = dt.NewRow();
                dr["image"] = ad.Value.Image;
                dr["title"] = ad.Value.Title;
                dr["price"] = ad.Value.Price;
                dr["year"] = ad.Value.Year;
                dr["category"] = ad.Value.Category;
                dr["description"] = ad.Value.Description;

                dt.Rows.Add(dr);      
            }
            */
            
        }
    }
}