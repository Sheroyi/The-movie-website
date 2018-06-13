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

public partial class movielist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BaseClass bs = new BaseClass();
        DataList1.DataSource = bs.GetDataSet("select * from film");
        DataList1.DataBind();

        string tname = Request.QueryString["name"];
        string ttype = Request.QueryString["type"];
        string filmtype = Request.QueryString["FilmType"];

        switch (ttype) {
            case "片名":
                {
                    DataList1.DataSource = bs.GetDataSet("select * from film where FilmName like '%" + tname + "%'");
                    DataList1.DataBind();
                    break;
                }
            case "主演":
                {
                    DataList1.DataSource = bs.GetDataSet("select * from film where LeadingRole like '%" + tname + "%'");
                    DataList1.DataBind();
                    break;
                }
            case "导演":
                {
                    DataList1.DataSource = bs.GetDataSet("select * from film where Director like '%" + tname + "%'");
                    DataList1.DataBind();
                    break;
                }
        }

        /*switch (filmtype) {
            case "动作":
                {
                    DataList1.DataSource = bs.GetDataSet("select * from film where FilmType='" + filmtype + "'");
                    DataList1.DataBind();
                    break;
                }
            case "恐怖": {

                DataList1.DataSource = bs.GetDataSet("select * from film where FilmType='" + filmtype + "'");
                DataList1.DataBind();
                break;
            }
        }*/

        if (filmtype != null)
        {
            DataList1.DataSource = bs.GetDataSet("select * from film where FilmType='" + filmtype + "'");
            DataList1.DataBind();
        }
    }
}
