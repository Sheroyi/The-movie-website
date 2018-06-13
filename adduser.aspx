<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="adduser.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    <p>姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="用户名不能为空！"></asp:RequiredFieldValidator>
        </p>
    <p>密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ErrorMessage="密码不能为空！" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    </p>
    <p>确认密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator runat="server" ErrorMessage="密码不一致！" ControlToValidate="TextBox3" ControlToCompare="TextBox2"></asp:CompareValidator></p>
    <p>性别：<asp:DropDownList runat="server">
        <asp:ListItem>男</asp:ListItem>
        <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList></p>
    <p>邮箱：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ErrorMessage="邮箱不能为空！" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator runat="server" ErrorMessage="请输入正确的邮箱地址！" 
            ControlToValidate="TextBox4" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
    ></asp:RegularExpressionValidator></p>
    <p>手机号码：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> 
    <asp:RequiredFieldValidator runat="server" ErrorMessage="手机号码不能为空！" ControlToValidate="TextBox5" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox5" Display="Dynamic" 
            ValidationExpression="\d{11}" ErrorMessage="请输入正确的手机号码！"></asp:RegularExpressionValidator></p>
    <p>简介：<asp:TextBox runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox></p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <p><asp:Button runat="server" Text="注册"/></p>
    </div>
    </form>
</body>
</html>
