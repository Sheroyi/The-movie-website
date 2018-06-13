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


public partial class addadminuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        BaseClass bs = new BaseClass();
        string strsql = "insert into dbo.client(name,pw,usertype) values('" + this.username.Text + "','" + this.userpass2.Text + "','" + this.type.Text + "')";
        bs.execsql(strsql);
        Page.ClientScript.RegisterStartupScript(this.GetType(), null, "alert('成功！')", true);
    }
}
