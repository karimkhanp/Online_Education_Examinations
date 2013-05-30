<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DetailsS.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
        <center>
        <fieldset><legend></legend>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               
            Width="569px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="First Name" ReadOnly="True" 
                    SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" ReadOnly="True" 
                    SortExpression="lname" />
                <asp:BoundField DataField="uname" HeaderText="User Name" ReadOnly="True" 
                    SortExpression="uname" />
                <asp:BoundField DataField="password" HeaderText="Password" ReadOnly="True" 
                    SortExpression="password" />
                <asp:BoundField DataField="dob" HeaderText="Birthdate" ReadOnly="True" 
                    SortExpression="dob" />
                <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="True" 
                    SortExpression="gender" />
                <asp:BoundField DataField="pcode" HeaderText="Postal code" ReadOnly="True" 
                    SortExpression="pcode" />
                
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkid" 
                            Checked='<%# Convert.ToBoolean(Convert.ToInt16(Eval("isuser"))) %>' 
                            runat="server" />
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
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Font-Names="Calibri" NavigateUrl="~/Admin/AdminHome.aspx" 
                Font-Overline="False" Font-Strikeout="False" Font-Underline="False">&lt;&lt; Back</asp:HyperLink>
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" 
            Text="Delete selected users' acconts" onclick="Button2_Click" />
       </fieldset>
       </center> 
    </div>
</asp:Content>

