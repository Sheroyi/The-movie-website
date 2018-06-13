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

public partial class play : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string id = Request["filmid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vodConnectionString"].ConnectionString);
            con.Open();


            string strsql = "select FullName from film where FilmID=" + id + "";
            SqlCommand cmd = new SqlCommand(strsql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string name = dr["FullName"].ToString();
                string url = "film/" + name;
                playit.Text = "<param name='Filename' value ='" + url + "'>";
            }
        }
        catch
        {
            Response.Redirect("index.aspx");
        }
    }
}
