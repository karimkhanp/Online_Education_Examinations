<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Faculty_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="style8">
        <tr>
            <td align="right" style="height: 23px; font-family: calibri; color: #034F87;" 
                width="50%">
                Select Catagory :
            </td>
            <td align="left" style="height: 23px; font-family: calibri;" width="50%">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="False" >
                    <asp:ListItem Selected="True" >GRE</asp:ListItem>
                    <asp:ListItem>SAT</asp:ListItem>
                    <asp:ListItem>GATE</asp:ListItem>
                    <asp:ListItem>IELTS</asp:ListItem>
                    <asp:ListItem>TOEFL</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-family: calibri; color: #034F87;" valign="top" 
                width="50%">
                Enter the Question :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87" width="50%">
                <asp:TextBox ID="TextBox7" runat="server" Height="67px" TextMode="MultiLine" 
                    Width="277px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="required!!" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-family: calibri; color: #034F87;" width="50%">
                Enter the Answer :
            </td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87" width="50%">
                <asp:TextBox ID="TextBox13" runat="server" Height="67px" TextMode="MultiLine" 
                    Width="277px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox13" ErrorMessage="required!!" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-family: calibri; color: #034F87;" width="50%">
                Enter the Option 1 :</td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87" width="50%">
                <asp:TextBox ID="TextBox14" runat="server" Height="67px" TextMode="MultiLine" 
                    Width="277px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox14" ErrorMessage="required!!" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-family: calibri; color: #034F87;" width="50%">
                Enter the Option 2 :</td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87" width="50%">
                <asp:TextBox ID="TextBox15" runat="server" Height="67px" TextMode="MultiLine" 
                    Width="277px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox15" ErrorMessage="required!!" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-family: calibri; color: #034F87;" width="50%">
                Enter the Option 3 :</td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87" width="50%">
                <asp:TextBox ID="TextBox16" runat="server" Height="67px" TextMode="MultiLine" 
                    Width="277px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox16" ErrorMessage="required!!" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-family: calibri; color: #034F87;" width="50%">
                Enter the Option 4 :</td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87" width="50%">
                <asp:TextBox ID="TextBox17" runat="server" Height="67px" TextMode="MultiLine" 
                    Width="277px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox17" ErrorMessage="required!!" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-family: calibri; color: #034F87;" width="50%">
                &nbsp;</td>
            <td align="left" 
                style="font-family: calibri; font-size: medium; color: #034F87" width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" 
                style="font-family: calibri; color: #034F87; height: 23px;" width="100%">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Faculty/user_homeFaculty.aspx?uname=user" Font-Underline="false" runat="server">&lt;&lt; Back</asp:HyperLink>
                
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Names="Calibri" 
                    Text="Add Question" onclick="Button1_Click" />
            </td>
            
        </tr>
        <tr>
            <td align="center" colspan="2" 
                style="font-family: calibri; color: #034F87; height: 23px;" width="100%">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td align="center" colspan="2" 
                style="font-family: calibri; color: #034F87; height: 23px;" width="100%">
                &nbsp;</td>
            
        </tr>
    </table>


</asp:Content>

