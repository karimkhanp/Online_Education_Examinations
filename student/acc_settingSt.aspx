<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="acc_settingSt.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<fieldset>    <br />
    <table style="width: 100%">
        <tr>
            <td align="right" width="50%" style="font-family: Calibri">
                User Name :
            </td>
            <td align="left" width="50%">
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Calibri"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" width="100%" colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Calibri" 
                    onclick="LinkButton1_Click">Click here to change the password</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                <asp:Label ID="Label4" runat="server" Text="Current Password :" Visible="False"></asp:Label>
&nbsp;</td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" TextMode="Password" 
                    Visible="False" />
                <asp:Label ID="Label2" runat="server" Visible="False" ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Password required" 
                    SetFocusOnError="true" ValidationGroup="validate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                <asp:Label ID="Label5" runat="server" Text="New Password :" Visible="False"></asp:Label>
&nbsp;</td>
            <td align="left" width="50%">
&nbsp;<asp:TextBox ID="TextBox2" runat="server" MaxLength="15" TextMode="Password" 
                    Visible="False" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Password required" 
                    SetFocusOnError="true" ValidationGroup="validate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                <asp:Label ID="Label6" runat="server" Text="Confirm New Password :" 
                    Visible="False"></asp:Label>
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Confirmation Password required" SetFocusOnError="true" 
                    ValidationGroup="validate"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Passwords do not match" ValidationGroup="validate"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                Email :
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox4" runat="server" Width="243px" ReadOnly="true" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" 
                    ErrorMessage="Email Address required" SetFocusOnError="true" 
                    ValidationGroup="validate"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" 
                    ErrorMessage="You must enter a valid E-mail address" 
                    ValidationExpression="^\S+@\S+\.\S+$" ValidationGroup="validate"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                New Email :
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox5" runat="server" Width="243px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" 
                    ErrorMessage="Email Address required" SetFocusOnError="true" 
                    ValidationGroup="validate"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox5" 
                    ErrorMessage="You must enter a valid E-mail address" 
                    ValidationExpression="^\S+@\S+\.\S+$" ValidationGroup="validate"></asp:RegularExpressionValidator>
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
                New City:
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox7" runat="server" MaxLength="15" />
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                Postal Code :</td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="true" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox8" Display="Dynamic" 
                    ErrorMessage="Postal code required" SetFocusOnError="true" 
                    ValidationGroup="validate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                New Postal Code :</td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox9" Display="Dynamic" 
                    ErrorMessage="Postal code required" SetFocusOnError="true" 
                    ValidationGroup="validate"></asp:RequiredFieldValidator>
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
                New Country :
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox11" runat="server" MaxLength="15" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 23px" width="50%">
                <br />
                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Font-Names="Calibri" 
                    onclick="Button3_Click" Text="&lt;&lt; Back" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                    Font-Names="Calibri" />
            </td>
        </tr>
    </table>
    <br />

</fieldset>

</asp:Content>

