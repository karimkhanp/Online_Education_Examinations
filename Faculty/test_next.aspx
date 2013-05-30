<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="test_next.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <table class="style8">
        <tr>
            <td align="right" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 23px;" 
                valign="top" width="50%">
                Selected Category :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87; height: 23px;" 
                valign="top" width="50%">
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 23px;" 
                valign="top" width="50%">
                Entered Question :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87; height: 23px;" 
                valign="top" width="50%">
                <asp:TextBox ID="TextBox4" runat="server" Height="63px" Width="230px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 23px;" 
                valign="top" width="50%">
                Entered Answer :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87; height: 23px;" 
                valign="top" width="50%">
                <asp:TextBox ID="TextBox5" runat="server" Height="63px" Width="230px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 23px;" 
                valign="top" width="50%">
                Option 1 :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87; height: 23px;" 
                valign="top" width="50%">
                <asp:TextBox ID="TextBox6" runat="server" Height="63px" Width="230px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 22px;" 
                valign="top" width="50%">
                Option 2 :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87; height: 22px;" 
                valign="top" width="50%">
                <asp:TextBox ID="TextBox7" runat="server" Height="63px" Width="230px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 23px;" 
                valign="top" width="50%">
                Option 3 :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87; height: 23px;" 
                valign="top" width="50%">
                <asp:TextBox ID="TextBox8" runat="server" Height="63px" Width="230px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 23px;" 
                valign="top" width="50%">
                Option 4 :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87; height: 23px;" 
                valign="top" width="50%">
                <asp:TextBox ID="TextBox9" runat="server" Height="63px" Width="230px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 23px;" 
                valign="top" width="50%">
                &nbsp;</td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87; height: 23px;" 
                valign="top" width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" 
                style="font-family: calibri; color: #034F87; font-size: medium; height: 23px;" 
                valign="top" width="100%">
                <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Faculty/Test.aspx" runat="server" Font-Underline="False">Add more 
                Questions..??..</asp:HyperLink>
            </td>
            
        </tr>
    </table>
&nbsp;&nbsp;&nbsp; 




</asp:Content>

