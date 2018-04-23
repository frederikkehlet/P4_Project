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
            showAdd();
        }
        public void showAdd()
        {
            string s = Request.QueryString["AD_ID"];
            DBConnect db = new DBConnect();
            DataTable dt = new DataTable();
            db.adConn(s).Fill(dt);
            DataList2.DataSource = dt;
            DataList2.DataBind();

            DataTable dt2 = new DataTable();
            db.userConn(s).Fill(dt2);
            DataList3.DataSource = dt2;
            DataList3.DataBind();
        }
    }
}