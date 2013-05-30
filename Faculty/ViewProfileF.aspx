<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewProfileF.aspx.cs" Inherits="Faculty_Default" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="right" style="height: 23px" width="50%">
                First Name :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
                Last Name :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                User Name :
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox12" runat="server" MaxLength="15" ReadOnly="True"  />
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                &nbsp;Password :
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" ReadOnly="True" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
                Security Question :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
                Answer :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox7" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
       
        
        <tr>
            <td align="right" width="50%">
                Email :
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox4" runat="server" Width="243px" ReadOnly="true" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                Qualification :
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox13" runat="server" Width="243px" ReadOnly="true" ></asp:TextBox>
            </td>
        </tr>
       <tr>
            <td align="right" style="height: 23px" width="50%">
                Gender :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox9" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
                Date of Birth :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox11" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
                City :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox6" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        
        <tr>
            <td align="right" width="50%">
                Postal Code :</td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="true" ></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td align="right" style="height: 23px" width="50%">
                Country :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox10" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        
        <tr>
            <td align="right" style="height: 23px" width="50%">
                &nbsp;</td>
            <td align="left" style="height: 23px" width="50%" >
                &nbsp;</td>
        </tr>
        
        <tr>
            <td align="center" style="height: 23px" width="50%" colspan="2">
                <asp:Button ID="Button1" runat="server" Font-Names="Calibri" 
                    onclick="Button1_Click" Text="&lt;&lt; Back" />
            </td>
        </tr>
        
    </table>

</asp:Content>

