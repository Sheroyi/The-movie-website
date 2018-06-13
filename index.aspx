<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="movielist" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            white-space:nowrap;
            word-break:keep-all; 
        }
        .poster
        {
            width: 270px;
            height: 378px;    
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td rowspan="3">
                        <a href="filmdetail.aspx?Filmid=<%#DataBinder.Eval(Container.DataItem,"filmid") %>">
                        <img style="width:270px; height:378px;" alt="" src="image/<%# DataBinder.Eval(Container.DataItem, "Image") %>"></td>
                        </a>
                    <td>
                        电影名称：</td>
                    <td>
                        <a href="filmdetail.aspx?Filmid=<%#DataBinder.Eval(Container.DataItem,"filmid") %>">
                        <%# DataBinder.Eval(Container.DataItem, "FilmName") %>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        主演：</td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "LeadingRole") %></td>
                </tr>
                <tr>
                    <td>
                        导演：</td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "Director")%></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>