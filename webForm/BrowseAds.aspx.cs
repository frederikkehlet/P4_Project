﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

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
                browseImage();
            }
        }
        public void browseImage()
        {
            string query = "SELECT * FROM ad WHERE user_id != " + Student.ID + ";";
            DBConnect db = new DBConnect();
            DataTable dt = new DataTable();
            db.DbDataConn(query).Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }      
    }
}