<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addadminuser.aspx.cs" Inherits="addadminuser" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="leftcolumn" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="rightcolumn" Runat="Server">
    <div>
        <p>用户名：<asp:TextBox ID="username" runat="server"></asp:TextBox></p>
        <p>密码：<asp:TextBox ID="userpass" runat="server" TextMode="Password"></asp:TextBox></p>
        <p>确认密码：<asp:TextBox ID="userpass2" runat="server" TextMode="Password"></asp:TextBox></p>
        <p>类型：<asp:DropDownList ID="type" runat="server">
        <asp:ListItem>super</asp:ListItem>
        <asp:ListItem>normal</asp:ListItem></asp:DropDownList></p>
        <asp:Button runat="server" ID="submit" Text="提交" onclick="submit_Click"/>
    </div>
    
</asp:Content>

