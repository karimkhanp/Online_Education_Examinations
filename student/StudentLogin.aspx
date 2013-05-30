<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    


    <br />
    <fieldset><center><legend>Student Login</legend></center>
    <table style="width: 100%">
        <tr>
            <td align="center" colspan="2" style="height: 23px">
                </td>
            
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
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="height: 23px">
                    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td align="center" colspan="2" 
                    style="height: 23px; text-decoration: underline;">
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/student/ForgotPassSt.aspx" runat="server">Forgot Password?</asp:HyperLink></td>
            </tr>
            <tr>
                <td colspan=2 align="center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/student/FormSt.aspx">create new account</asp:HyperLink>    
                        
                    </td>
                    </tr>    
    </table>
    </fieldset>
    <br />

    


</asp:Content>

