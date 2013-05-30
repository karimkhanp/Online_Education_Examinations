<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassF.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<script runat="server">

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <center><fieldset>
    <table style="width: 100%">
        <tr>
            <td align="right" style="height: 26px" width="50%">
                User Name :</td>
            <td align="left" style="height: 26px" width="50%">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="User Name required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate"></asp:RequiredFieldValidator>     

            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                Enter your security question :
            </td>
            <td align="left" width="50%">
            <asp:DropDownList ID="DropDownList1" name="que" runat="server" Width="236px" 
                Height="24px"
                AutoPostBack="true" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
                 

            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                Answer :
            </td>
            <td align="left" width="50%">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Answer required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate"></asp:RequiredFieldValidator>     

                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" width="50%" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Confirm" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
                <td align="right" width="50%" colspan="1">
            <asp:Label ID="Label3" runat="server" ></asp:Label>
                &nbsp;</td>
                <td align="left" width="50%" colspan="1">
            <asp:Label ID="LabelP" runat="server" ></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" width="50%" colspan="2">
                <asp:Label ID="Label1" runat="server" ></asp:Label>
                &nbsp;</td>
            
            
        </tr>
        <tr>
            <td align="center" width="50%" colspan="2">
            <asp:Label ID="Label2" runat="server" ></asp:Label>
                &nbsp;</td>
            
            
        </tr>
    </table>


</fieldset>
</center>
</asp:Content>

