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

public partial class filmdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BaseClass bs = new BaseClass();
        string strsql = "select * from film where filmid='" + Request.QueryString["filmid"] + "'";
        DataList1.DataSource = bs.GetDataSet(strsql);
        DataList1.DataBind();
        /*string strsql2 = "select * from film where FilmType='" + Request.QueryString["FilmType"] + "'";
        DataList1.DataSource = bs.GetDataSet(strsql2);
        DataList1.DataBind();*/
    }
}
