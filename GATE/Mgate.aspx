<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mgate.aspx.cs" Inherits="Faculty_Default" Title="Untitled Page" EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Height="35px" 
         Width="318px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
        CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
        onrowcommand="GridView1_RowCommand" AllowSorting="True">
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
                  
        <asp:BoundField DataField="fn" ReadOnly="True" SortExpression="fn"/> 
        <asp:TemplateField>
            <ItemTemplate>
               <center> &nbsp;<asp:Button ID="Button3" runat="server" CommandArgument='<%# Bind("fn") %>' CommandName="del" Text="Delete" TabIndex="1"  /></center>&nbsp;                         
            </ItemTemplate>
        </asp:TemplateField>
        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="View" />
        
    </Columns>
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#999999" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [material] where cat='GATE' and subcat='Material'"></asp:SqlDataSource>


    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    
</asp:Content>

