<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="delfilm.aspx.cs" Inherits="delfilm" Title="无标题页" %>

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
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        onrowdatabound="GridView1_RowDataBound"
        onrowdeleting="GridView1_RowDeleting"
        onpageindexchanging="GridView1_PageIndexChanging" 
        onselectedindexchanged="GridView1_SelectedIndexChanged"
        EnableTheming="True" DataKeyNames="FilmID" onsorting="GridView1_Sorting" >
        <Columns>
            <asp:TemplateField>
            <HeaderTemplate>
                    
                </HeaderTemplate>
                </asp:TemplateField>
            <asp:BoundField DataField="FilmID" HeaderText="编号" />
            <asp:BoundField DataField="FilmName" HeaderText="名称" />
            <asp:BoundField DataField="FilmType" HeaderText="类型" />
            <asp:BoundField DataField="Director" HeaderText="导演" />
            <asp:BoundField DataField="LeadingRole" HeaderText="主演" />
            <asp:CommandField ShowDeleteButton="true" />
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text="<%Eval("FilmName")%>"></asp:TextBox>
                </EditItemTemplate>
                
                <HeaderTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" oncheckedchanged="CheckBox2_CheckedChanged" Text="全选" AutoPostBack="true" />
                </HeaderTemplate>
                
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
                
            </asp:TemplateField>
        </Columns>
    </asp:GridView></div><div style="margin-top:15px"><asp:Button runat="server" ID="Button1" Text="删除" OnClick="Button1_Click"/></div>
</asp:Content>

