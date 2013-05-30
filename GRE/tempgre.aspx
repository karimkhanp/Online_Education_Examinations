<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tempgre.aspx.cs" Inherits="Faculty_Default" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%--<asp:LinqDataSource ID="LinqDataSource1" runat="server">
    </asp:LinqDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="fn" ReadOnly="True" SortExpression="fn" />
               <asp:TemplateField HeaderText="">
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server" Text="dlt" OnClick="Button3_click" />
                        
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="View" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:GridView>
<asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
--%>



<asp:GridView ID="GridView1" runat="server" 
HeaderStyle-BackColor = "green"
AutoGenerateColumns = "False" Font-Names = "Arial" 
OnPageIndexChanging = "OnPaging"
Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B" 
AllowPaging = "True" CellPadding="4" ForeColor="#333333" GridLines="None">
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
<Columns>

<asp:BoundField ItemStyle-Width="150px" DataField="que" 
    HeaderText=""  />
<asp:TemplateField>
<ItemTemplate>
    <asp:RadioButton ID="RadioButton1" runat="server" 
        onclick = "RadioCheck(this);"/>
    <asp:RadioButton ID="RadioButton2" runat="server" 
        onclick = "RadioCheck(this);"/>
    <asp:RadioButton ID="RadioButton3" runat="server" 
        onclick = "RadioCheck(this);"/>
    <asp:RadioButton ID="RadioButton4" runat="server" 
        onclick = "RadioCheck(this);"/>
    <asp:HiddenField ID="HiddenField1" runat="server" 
        Value = '<%#Eval("ans")%>' />
</ItemTemplate> 
</asp:TemplateField> 
</Columns> 
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />

<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

    <EditRowStyle BackColor="#999999" />

<AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
</asp:GridView>











</asp:Content>

