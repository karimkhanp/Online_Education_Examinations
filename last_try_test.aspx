<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="last_try_test.aspx.cs" Inherits="Default5" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         AllowPaging="True" PageSize="4" 
        backcolor="White" bordercolor="#CCCCCC" borderstyle="None" borderwidth="1px" 
        cellpadding="4" forecolor="Black" gridlines="Horizontal" >
<Columns>
<asp:TemplateField>
    <ItemTemplate>
                <asp:Label ID="Label1" runat="server" ></asp:Label><hr />
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="abc" /><br />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="abc" /><br />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="abc" /><br />
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="abc" /><br />
                <br />
            
            
    </ItemTemplate>
</asp:TemplateField>
</Columns>

    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
</asp:GridView> <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click"/> 
<asp:Label ID="Label2" runat="server" Visible="false" ></asp:Label>
 <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
        SelectCommand="SELECT * FROM [gre_test]"></asp:SqlDataSource>
--%>

    

</asp:Content>

