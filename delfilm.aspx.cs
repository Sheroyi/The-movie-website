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

public partial class delfilm : System.Web.UI.Page
{
    BaseClass bs = new BaseClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            band();
        }
    }

    private void band() {
        string strsql = "select * from film";
        GridView1.DataSource = bs.GetDataSet(strsql);
        GridView1.DataBind();
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        /*foreach (GridViewRow gr in GridView1.Rows)
        {
            CheckBox cbox = (CheckBox)gr.FindControl("CheckBox1");
            if (cbox.Checked == false) {
                cbox.Checked = !cbox.Checked;
            }
        }*/
        foreach (GridViewRow gr in GridView1.Rows)
        {
           //查找gridview控件中的CheckBox1控件
            CheckBox cbox = (CheckBox)gr.FindControl("CheckBox1");
            if (cbox.Checked == false)
            {
               //设置为选中状态
                cbox.Checked = true;
            }
            else
            {
                //设置为取消状态
                cbox.Checked = false;
            }
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e) {
        if (e.Row.RowType == DataControlRowType.DataRow) {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            { 

            }
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e) {

        string deleteid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string strsql = "delete from film where Filmid='" + deleteid + "'";
        bs.execsql(strsql);
        //Response.Write("<script>alert('删除成功');</script>");
        //if (ClientScript.IsStartupScriptRegistered("SuccessAlert")){
        //    this.ClientScript.RegisterStartupScript(this.GetType(), "SuccessAlert", "alert('删除成功')", true);
        //}
        string script = "alert('删除成功')";
        Page.ClientScript.RegisterStartupScript(this.GetType(), null, script, true);
        band();
    }

    protected void Button1_Click(object sender, EventArgs e) {
        Button1.Attributes.Add("onclick", "javascript:return confirm('你确认要删除吗？')");
        for (int i = 0; i < GridView1.Rows.Count; i++) {
            CheckBox check = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (check.Checked) {
                string sqlstr = "delete from film where Filmid='" + GridView1.DataKeys[i].Value.ToString() + "'";
                BaseClass bs = new BaseClass();
                bs.execsql(sqlstr);
            }
        }
        band();
    }

    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e) {
        this.GridView1.PageIndex = e.NewPageIndex;
        band();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) {
        string aa = this.GridView1.SelectedRow.Cells[0].Text.ToString();
        Response.Redirect("update.aspx?filmid=" + aa + "'");
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
    }
}
