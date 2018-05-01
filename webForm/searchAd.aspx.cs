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
            int min;
            int max;

            if (searchBox.Text == null) searchBox.Text = "";
            if (Int32.TryParse(minPrice.Text, out min) == false) min = 0;
            if (Int32.TryParse(maxPrice.Text, out max) == false) max = MaxPrice();

            DBConnect db = new DBConnect();
            DataTable dt = new DataTable();


            db.searchAdapter(searchBox.Text, min, max).Fill(dt);
            DataListSearch.DataSource = dt;
            DataListSearch.DataBind();
        }

        private int MaxPrice()
        {
            DBConnect connection = new DBConnect();
            connection.Connection.Open();
            string query = "SELECT MAX(price) FROM ad";
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = connection.Connection;
            var max = cmd.ExecuteScalar();
            connection.Connection.Close();
            return Convert.ToInt32(max);
        }
    }
}