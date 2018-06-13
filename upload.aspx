<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" Title="无标题页" %>

<asp:Content ID="leftcolumn" ContentPlaceHolderID="leftcolumn" Runat="Server">
    <style type="text/css">
        
        *{ margin:0px; padding:0px;}
        
        img{ border:none;}
        
        a{ text-decoration:none; color:White}
        
        body
        {
           background-color:black;
        }
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="rightcolumn" ContentPlaceHolderID="rightcolumn" Runat="Server">
    <div><p>电影名称：<asp:TextBox runat="server" ID="FilmName"></asp:TextBox></p>
    <p>影片类型：<asp:DropDownList runat="server" ID="FilmType">
               <asp:ListItem>动作片</asp:ListItem>
               <asp:ListItem>爱情片</asp:ListItem>
               <asp:ListItem>动画片</asp:ListItem>
               <asp:ListItem>故事片</asp:ListItem>
               <asp:ListItem>惊悚片</asp:ListItem>
    </asp:DropDownList></p>
    <p>影片主演：<asp:TextBox ID="LeadingRole" runat="server"></asp:TextBox></p>
    <p>导演：<asp:TextBox  ID="Director" runat="server"></asp:TextBox></p>
    <p>影片海报：<asp:FileUpload runat="server" ID="fileUploadPic" /></p>
    <p>上传影片：<asp:FileUpload runat="server" ID="fileUploadVid" /></p>
    <p><asp:Button runat="server" ID="uploadButton" Text="上传海报和影片" onclick="uploadButtonClick"/></p>
    <p>影片简介：<asp:TextBox runat="server" ID="Content" TextMode="MultiLine"></asp:TextBox></p>
    <p><asp:Button runat="server" ID="submitButton" Text="提交" OnClick="submitButtonClick"/><asp:TextBox Visible="false" ID="showFilmName" runat="server"></asp:TextBox><asp:TextBox ID="showImageName" Visible="false" runat="server"></asp:TextBox></p></div>
    <div><asp:Image style="width:270px; height:378px;" runat="server" ID="Image1" Visible="false" /></div>
</asp:Content>

