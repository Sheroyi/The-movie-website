<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="changepass" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="leftcolumn" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="rightcolumn" Runat="Server">
    <div>
        <p>用户名：<asp:TextBox runat="server" ID="username"></asp:TextBox></p>
        <p>原密码：<asp:TextBox runat="server" ID="originpass" TextMode="Password"></asp:TextBox></p>
        <p>新密码：<asp:TextBox runat="server" ID="newpass" TextMode="Password"></asp:TextBox></p>
        <p>确认密码：<asp:TextBox runat="server" ID="userpass2" TextMode="Password"></asp:TextBox></p>
        <asp:Button runat="server" ID="sumbit" Text="提交" onclick="sumbit_Click" />
        <asp:DataList runat="server" ID="DataList1" Visible="false"></asp:DataList>
    </div>
</asp:Content>

