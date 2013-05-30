<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Show _news.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        
        <HeaderTemplate>
            <table border=0 width=100%>
            
        </HeaderTemplate>
        <ItemTemplate>
            <tr><td><b><font face="candara" size=4 color="black"><%# Eval("heading") %></font></td></tr>
            <tr><td><font face="Georgia" size=4 color="#034F87"><%# Eval("news") %><hr /></font></td></tr>
            <tr><td><font face="candara" size=3 color="cyan"><i>Date:<%# Eval("date").ToString().Replace("12:00:00 AM", "")%></i><hr /></font></td></tr>
        </ItemTemplate>
        <FooterTemplate>
            
            </table>
        </FooterTemplate>
    </asp:Repeater>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
    SelectCommand="SELECT [heading], [news], [date] FROM [news]">
</asp:SqlDataSource>

</asp:Content>

