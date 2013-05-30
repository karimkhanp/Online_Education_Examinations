<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="result_gre.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <table align="center" class="style8">
        <tr>
            <td align="right" style="color: #034F87; font-family: calibri" width="50%">
                Atempted Questions :
                                     </td>
                                     <td align="left" style="font-family: calibri; color: #034F87" width="50%">
                                         <asp:Label ID="Label3" runat="server"></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td align="right" style="color: #034F87; font-family: calibri" width="50%">
                                         Right Answers :             </td>
            <td align="left" style="font-family: calibri; color: #034F87" width="50%">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

