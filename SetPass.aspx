<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SetPass.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table style="width: 100%">
        <tr>
            <td align="right" width="50%">
                User Name :
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                New Password :
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="15" TextMode="Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Password required" 
                    SetFocusOnError="true" ValidationGroup="validate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
                Confirm New Password :             </td>
            <td align="left" style="height: 23px" width="50%">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Confirmation Password required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords do not match" 
                    Display="Dynamic" ValidationGroup="validate"></asp:CompareValidator>
            </td>

        </tr>
        <tr>
            <td align="center" style="height: 23px" width="50%" colspan=2 >
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
            </td>
            

        </tr>
        <tr>
            <td align="center" style="height: 23px" width="50%" colspan=2 >
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            

        </tr>
    </table>



</asp:Content>

