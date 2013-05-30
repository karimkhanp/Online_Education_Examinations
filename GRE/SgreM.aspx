<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SgreM.aspx.cs" Inherits="student_Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <li style="background-color: #E0FFFF;color: #333333;">
                <asp:HyperLink ID="HyperLink1" Target="_blank" ForeColor="#191970" NavigateUrl=<%#    "Material/" + Eval("fn") %> runat="server" Font-Overline="False" BorderStyle="None" Font-Underline="False" Font-Size="Small"><asp:Label ID="fnLabel" runat="server" Text='<%# Eval("fn") %>' />
                </asp:HyperLink><br />
            </li>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF;color: #284775;">
                <asp:HyperLink ID="HyperLink1" Target="_blank" ForeColor="#191970" NavigateUrl=<%#    "Material/" + Eval("fn") %> runat="server" Font-Overline="False" BorderStyle="None" Font-Underline="False" Font-Size="Small"><asp:Label ID="fnLabel" runat="server" Text='<%# Eval("fn") %>' />
                </asp:HyperLink>
                <br />
            </li>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">fn:
                <asp:TextBox ID="fnTextBox" runat="server" Text='<%# Bind("fn") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </li>
        </InsertItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li ID="itemPlaceholder" runat="server" />
                </ul>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <EditItemTemplate>
                <li style="background-color: #999999;">
                    <asp:TextBox ID="fnTextBox" runat="server" Text='<%# Bind("fn") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </li>
            </EditItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">fn:
                    <asp:Label ID="fnLabel" runat="server" Text='<%# Eval("fn") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
            SelectCommand="SELECT [fn] FROM [material] where cat='GRE' and subcat='Material'"></asp:SqlDataSource>


</asp:Content>

