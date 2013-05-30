<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewProfileSt.aspx.cs" Inherits="student_Default" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table style="width: 100%">
        <tr>
            <td align="right" style="height: 23px" width="50%">
                <span style="font-family: Calibri; color: #2E99F1;">Name : </span> 
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
                <span style="font-family: Calibri; color: #2E99F1;">Last Name :</span>
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                <span style="font-family: Calibri; color: #2E99F1;">User Name :</span>
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox12" runat="server" MaxLength="15" ReadOnly="True"  />
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                <span style="font-family: Calibri; color: #2E99F1;">&nbsp;Password :</span>
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" ReadOnly="True" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
               <span style="font-family: Calibri; color: #2E99F1;"> Security Question :</span>
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
                <span style="font-family: Calibri; color: #2E99F1;">Answer :</span>
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox7" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
       
        
        <tr>
            <td align="right" width="50%">
                <span style="font-family: Calibri; color: #2E99F1;">Email :</span>
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox4" runat="server" Width="243px" ReadOnly="true" ></asp:TextBox>
            </td>
        </tr>
       <tr>
            <td align="right" style="height: 23px" width="50%">
                <span style="font-family: Calibri; color: #2E99F1;">Gender :</span>
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox9" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
               <span style="font-family: Calibri; color: #2E99F1;"> Date of Birth :</span>
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox11" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px" width="50%">
              <span style="font-family: Calibri; color: #2E99F1;">  City :</span>
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox6" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        
        <tr>
            <td align="right" width="50%">
              <span style="font-family: Calibri; color: #2E99F1;">  Postal Code :</span></td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="true" ></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td align="right" style="height: 23px" width="50%">
                <span style="font-family: Calibri; color: #2E99F1;">Country :</span>
            </td>
            <td align="left" style="height: 23px" width="50%" >
                <asp:TextBox ID="TextBox10" runat="server" MaxLength="15" ReadOnly="true" />
            </td>
        </tr>
        
        
        <tr>
            <td align="center" style="height: 23px" width="50%" colspan="2">
                &nbsp;</td>
        </tr>
        
        
        <tr>
            <td align="center" style="height: 23px" width="50%" colspan="2">
                <asp:Button ID="Button1" runat="server" Font-Names="Calibri" 
                    Text="&lt;&lt; Back" onclick="Button1_Click" />
            </td>
            <td align="left" style="height: 23px" width="50%" >
                &nbsp;</td>
        </tr>
        
        
    </table>
</asp:Content>

