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

public partial class changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sumbit_Click(object sender, EventArgs e)
    {
        BaseClass bs = new BaseClass();
        string oripasstr = "select pw from client where name = '" + this.username.Text + "'";
        DataSet ds = bs.GetDataSet(oripasstr);
        string oripas = ds.Tables[0].Rows[0][0].ToString();
        if (this.originpass.Text != oripas) { Page.ClientScript.RegisterStartupScript(this.GetType(), null, "alert('原密码错误！')", true); }
        else
        {
            string strsql = "update dbo.client set pw='" + this.userpass2.Text + "' where name='" + this.username.Text + "'";
            bs.execsql(strsql);
            Page.ClientScript.RegisterStartupScript(this.GetType(), null, "alert('成功！')", true);
        }
    }
}
