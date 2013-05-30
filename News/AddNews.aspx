<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <center>
    <table width="100%">
    <tr>
        <td colspan="2" width="100%"><font face="lucida bright" size=4 color=aqua><span class="style1">Add News</span><br /><br /></font></td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: calibri; color: #034F87;" width="40%">&nbsp;HeadLines 
            : </td>
        <th class="style2" width="60%">
        <asp:TextBox type="text" id="t1" style="width : 720px" runat="server" Text="" /></asp:TextBox>
        </th>
    </tr>
    <tr>
        <td width="40%"></td>
        <td width="60%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="t1" ErrorMessage="Headlines Cannot Be Empty!!" 
                Font-Names="Calibri"></asp:RequiredFieldValidator>
        </td>
        
    </tr>
   
    
    <tr>
        
        <td align="right" style="font-family: calibri; color: #034F87;" valign="top" 
            class="style3" width="40%" >News:</td>
        <td align=center width="60%" class="style3">
        <textarea id="TextArea1" 
                
                style="width : 720px; height : 375px; font-family: calibri; margin-bottom: 0px;" runat="server" 
                name="article" cols="20" rows="1" ></textarea><br />
        </td>
    </tr>
    <tr style="font-family: calibri">
        <td style="width: 55%"></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextArea1" ErrorMessage="News Cannot Be empty!!"></asp:RequiredFieldValidator>
        </td>
        
    </tr>
    <tr>
        
        
        <td align="center" colspan="2" width="100%" style="height: 33px">
            <asp:HyperLink ID="HyperLink3" runat="server" BorderStyle="None" 
                Font-Names="Calibri" Font-Underline="False" NavigateUrl="~/Faculty/user_homeFaculty.aspx?uname=user">&lt;&lt; 
            Back</asp:HyperLink>
&nbsp;&nbsp;
            &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" Width="120px" 
                onclick="Button1_Click" Font-Names="Calibri" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Font-Names="Calibri" 
                onclick="Button2_Click" Text="Add More !!" />
            </td>
    </tr>
    <tr>
        
        
        <td align="center" colspan="2" width="100%">
            <asp:Label ID="Label2" runat="server" Font-Names="Calibri" ForeColor="Red" 
                Text="News Uploaded successfully..!!.." Visible="False"></asp:Label>
            </td>
    </tr>
    </table>
    </center>

   

</asp:Content>

