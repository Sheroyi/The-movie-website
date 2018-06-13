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

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void uploadButtonClick(object sender, EventArgs e){
        if (fileUploadPic.PostedFile.FileName.Trim() != "" && fileUploadVid.PostedFile.FileName.Trim() != "")
        {
            string filmPath = fileUploadVid.PostedFile.FileName;
            string filmName = filmPath.Substring(filmPath.LastIndexOf("\\") + 1);
            string filmSavePath = Server.MapPath("film");
            fileUploadVid.PostedFile.SaveAs(filmSavePath + "\\" + filmName);

            string imagePath = fileUploadPic.PostedFile.FileName;
            string imageName = imagePath.Substring(imagePath.LastIndexOf("\\") + 1);
            string imageSavePath = Server.MapPath("image");
            fileUploadPic.PostedFile.SaveAs(imageSavePath + "\\" + imageName); 
            this.Image1.ImageUrl = "image" + "/" + imageName;
            this.Image1.Visible = true;
            showFilmName.Text = filmName;
            showImageName.Text = imageName;
        }
        else {
            Page.ClientScript.RegisterStartupScript(this.GetType(), null, "alert('请添加影片和图片！')", true);
        }
    }

    protected void submitButtonClick(object sender, EventArgs e)
    {
        if (Image1.Visible == true)
        {
            BaseClass bs = new BaseClass();
            string sql = "insert into film(FilmName,FilmType,Director,FullName,LeadingRole,Image,Text) values('" + this.FilmName.Text + "','" + this.FilmType.Text + "','" + this.Director.Text + "','" + this.showFilmName.Text + "','" + this.LeadingRole.Text + "','" + this.showImageName.Text + "','" + this.Content.Text + "')";
            bs.execsql(sql);
        }
        else {
            Page.ClientScript.RegisterStartupScript(this.GetType(), null, "alert('请先上传图片和影片！')", true);
        }
    }
}
