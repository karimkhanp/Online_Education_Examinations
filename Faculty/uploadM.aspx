<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uploadM.aspx.cs" Inherits="Default4" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div>
        
         
        
        <table style="width: 100%">
            <tr><td></td></tr>
            <tr>
                <td align="right" style="height: 23px; font-family: Calibri;" width="50%">
                    Select the Category :&nbsp;
                </td>
                <td align="left" style="height: 23px" width="50%">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>GRE</asp:ListItem>
                        <asp:ListItem>SAT</asp:ListItem>
                        <asp:ListItem>GATE</asp:ListItem>
                        <asp:ListItem>IELTS</asp:ListItem>
                        <asp:ListItem>TOEFL</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="font-family: calibri">
                <td align="right" style="height: 23px" width="50%">
                    Select the Sub-category :&nbsp;
                </td>
                <td align="left" style="height: 23px" width="50%">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Material</asp:ListItem>
                        <asp:ListItem>Test Paper</asp:ListItem>

                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td align="right" width="50%" style="font-family: calibri">
                    Select the file to upload in selected category :
                </td>
                <td align="left" width="50%">
        <input id="File1" type="file" runat="server" style="font-family: CAlibri"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                        ControlToValidate="File1" runat="server" 
                        ErrorMessage="RequiredField can't be empty!" Font-Names="Calibri"></asp:RequiredFieldValidator>
        </td>
            </tr>
            <tr>
                
                    <td align="right" width="50%">
                        <asp:HyperLink ID="HyperLink1" 
                            NavigateUrl="~/Faculty/user_homeFaculty.aspx?uname=user" Font-Underline="False" 
                            runat="server" Font-Names="Calibri">&lt;&lt; Back</asp:HyperLink>
                    &nbsp;&nbsp;
                    </td>
                    <td align="left" width="50%">
                  <%--  <asp:Button ID="Button2" runat="server" Font-Names="Calibri" Font-Size="Small" 
                        onclick="Button2_Click" Text="&lt;&lt; Back" />
                &nbsp;&nbsp;&nbsp;&nbsp; --%>&nbsp; <asp:Button ID="Button1" runat="server" 
                        onclick="Button1_Click" Text="Upload" Font-Names="Calibri" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2" width="50%">
                    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label></td>
               </tr>
            <tr>
                <td align="center" colspan="2" width="50%">
                    &nbsp;</td>
               </tr>
        </table>
        <br />
        &nbsp;<br />
        
        <br />
    
        
    
 </div>


</asp:Content>

