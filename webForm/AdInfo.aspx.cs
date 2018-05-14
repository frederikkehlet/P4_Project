using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webForm
{
    public partial class AdInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("~/Login.aspx");
            else
            {
                showAdd();
            }           
        }
        public void showAdd()
        {
            string query = "SELECT * FROM ad WHERE ad_id = " + Request.QueryString["AD_ID"] + ";";
            string query2 = "select distinct users.first_name,users.last_name,users.email,users.phone from users join ad on ad.user_id = users.id where ad.ad_id =" + Request.QueryString["AD_ID"] + ";";
            DBConnect db = new DBConnect();
            DataTable dt = new DataTable();
            db.DbDataConn(query).Fill(dt);
            DataList2.DataSource = dt;
            DataList2.DataBind();

            DataTable dt2 = new DataTable();
            db.DbDataConn(query2).Fill(dt2);
            DataList3.DataSource = dt2;
            DataList3.DataBind();
        }
    }
}