<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dgre.aspx.cs" Inherits="student_Default" Title="Untitled Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center>   
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="4"  
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        onrowcommand="GridView1_RowCommand" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="fn" HeaderText="" SortExpression="fn" />
            <asp:TemplateField>
                <ItemTemplate>
                    <center> <asp:Button ID="Button1" runat="server" Text="download" CommandArgument='<%# Bind("fn") %>' CommandName="dwn" /></center>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <br />
    <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage1.aspx" 
            Font-Names="Calibri" Font-Underline="False">&lt;&lt;back</asp:HyperLink>
    
</center>  

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
        SelectCommand="SELECT [fn] FROM [material] where cat='GRE' and subcat='Material'"></asp:SqlDataSource>

</asp:Content>

