using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using vod.film;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BaseClass bs = new BaseClass(); 

        string strsql = "select * from client where name ='" + this.TB1.Text + "' and pw='" + this.TB2.Text + "'";
        
        if (bs.GetDataSet(strsql).Tables[0].Rows.Count > 0)
        {
            this.Response.Redirect("index.aspx");
        }
        else {
            this.Response.Write("<script>alert('用户名和密码错误！');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Response.Redirect("adduser.aspx");
    }
}
