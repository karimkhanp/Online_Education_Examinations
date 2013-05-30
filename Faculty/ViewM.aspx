<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewM.aspx.cs" Inherits="Faculty_Default" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" >
        <tr>
            <td align="right" width="50%" 
                style="color: #034F87; font-family: 'palatino Linotype';">
                Material</td>
            <td align="left" width="50%">
                &nbsp;</td>
        </tr>
        <tr id="Test Paper">
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/GRE/Mgre.aspx" 
                    Font-Names="Calibri" Font-Underline="False" >GRE</asp:HyperLink></td>
        </tr>
        <tr id="gm" visible="false">
            <td align="right" width="50%" style="height: 23px">
                </td>
            <td align="left" width="50%" style="height: 23px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TOEFL/Mtoefl.aspx" 
                    Font-Names="Calibri" Font-Underline="False" >TOEFL</asp:HyperLink></td>
        </tr>
        
        <tr>
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/SAT/Msat.aspx" 
                    Font-Names="Calibri" Font-Underline="False" >SAT</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="right" width="50%" style="height: 23px">
                </td>
            <td align="left" width="50%" style="height: 23px">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/IELTS/Mielts.aspx" 
                    Font-Names="Calibri" Font-Strikeout="False" Font-Underline="False" >IELTS</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/GATE/Mgate.aspx" 
                    Font-Names="Calibri" Font-Underline="False" >GATE</asp:HyperLink></td>
        </tr>
     <%--   <tr>
            <td align="right" width="50%">
                Test Paper</td>
            <td align="left" width="50%">
                &nbsp;</td>
        </tr>
        <tr id="Tr1">
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/GRE/Tgre.aspx" >GRE</asp:HyperLink></td>
        </tr>
        <tr id="Tr2" visible="false">
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/TOEFL/Ttoefl.aspx" >TOEFL</asp:HyperLink></td>
        </tr>
        
        <tr>
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/SAT/Tsat.aspx" >SAT</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/IELTS/Tielts.aspx" >IELTS</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/GATE/Tgate.aspx" >GATE</asp:HyperLink></td>
        </tr>--%>
    </table>

</asp:Content>

