<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Default2" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <center>
        <fieldset><legend></legend>
    <table style="width: 100%">
        <tr>
            <td align="center" colspan="2" style="height: 23px">
                Admin Login</td>
            
        </tr>
       <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10" align="left" width="50%">
                    User Name:<sup style="color:red">*</sup></td>
                <td style="font-family: Candara; font-size: medium; color: #FF0000;" 
                    class="style11" align="left" width="50%">
                    <asp:TextBox id="TextBox1" runat="server" MaxLength="15" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10" align="left" width="50%">
                    Password:<sup style="color:red">*</sup></td>
                <td class="style11" align="left" width="50%">
                    <asp:TextBox id="TextBox2" runat="server"
                    TextMode="Password" MaxLength="15" />
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="height: 23px">
                    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" /></td>
            </tr>
            
               
    </table>
    </fieldset>
    </center>
    <br />

</asp:Content>

