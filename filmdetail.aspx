<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="filmdetail.aspx.cs" Inherits="filmdetail" Title="�ޱ���ҳ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td rowspan="6">
                            <img style="width:270px; height:378px;" alt="" src="image/<%# DataBinder.Eval(Container.DataItem,"Image") %>" /></td>
                    <td>
                        ��Ӱ����</td>
                    <td>
                            <%# DataBinder.Eval(Container.DataItem,"FilmName") %></td>
                </tr>
                <tr>
                    <td>
                        ��Ӱ���ͣ�</td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "FilmType") %>
                        </td>
                </tr>
                <tr>
                    <td>
                        ���ݣ�</td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "Director")%>;</td>
                </tr>
                <tr>
                    <td>
                        ���ݣ�</td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "LeadingRole")%>;</td>
                </tr>
                <tr>
                    <td>
                        ��飺</td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem,"Text") %>;</td>
                </tr>
                <tr>
                    <td>
                        ���ţ�
                    </td>
                    <td>
                        <a href="play.aspx?filmid=<%# DataBinder.Eval(Container.DataItem,"FilmID") %>"
                            style="color:white;">����
                        </a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

