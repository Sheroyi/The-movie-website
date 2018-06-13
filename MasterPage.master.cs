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
using vod.film;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        BaseClass bs = new BaseClass();

        string strsql = "select * from client where name ='" + this.tusername.Text + "' and pw='" + this.tuserpass.Text + "'";

        int collective = bs.GetDataSet(strsql).Tables[0].Rows.Count;

        if (collective > 0)
        {
            Session["UserName"] = this.tusername.Text.Trim();
            Session["UserType"] = bs.GetDataSet(strsql).Tables[0].Rows[0][4].ToString().Trim();
            string admintype = Session["UserType"].ToString();
            if (admintype == "super")
            {
                this.Response.Redirect("admin.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), null, "alert('不是超管')", true);
            }
        }
        else
        {
            //this.Response.Write("<script>alert('用户名和密码错误！');</script>");
            Page.ClientScript.RegisterStartupScript(this.GetType(), null, "alert('用户名和密码错误！')", true);
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        this.Response.Redirect("adduser.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("index.aspx?name=" + TextBox1.Text + "&type=" + ddl.SelectedValue + "");
    }
}
