<%@ Page Language="C#" AutoEventWireup="true" CodeFile="load.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>用户名：<asp:TextBox runat="server" ID="TB1"></asp:TextBox></p>
    <p>密码：<asp:TextBox runat="server" ID="TB2" TextMode="Password"></asp:TextBox></p>
    <p><asp:Button runat="server" ID="Button1" Text="Login" onclick="Button1_Click" /><asp:Button runat="server" ID="Button2" Text="Register" onclick="Button2_Click" /></p>
    </div>
    </form>
</body>
</html>
