<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<fieldset>
<center>
    <asp:HyperLink ID="HyperLink7" NavigateUrl="~/WebsiteInfo.aspx" runat="server" BorderStyle="None" ForeColor="#1C7BAA" Font-Underline="false" >About Website</asp:HyperLink>
    <hr />
    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/GRE/GreDetails.aspx" runat="server" BorderStyle="None" ForeColor="#1C7BAA" Font-Underline="false" >About GRE</asp:HyperLink>
    <hr />
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/TOEFL/ToeflDetails.aspx" runat="server" BorderStyle="None" ForeColor="#1C7BAA" Font-Underline="false" >About TOEFL</asp:HyperLink>
    <hr />
    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/SAT/SatDetails.aspx" runat="server" BorderStyle="None" ForeColor="#1C7BAA" Font-Underline="false" >About SAT</asp:HyperLink>
    <hr />
    <asp:HyperLink ID="HyperLink4" NavigateUrl="~/IELTS/IeltsDetails.aspx" runat="server" BorderStyle="None" ForeColor="#1C7BAA" Font-Underline="false" >About EILTS</asp:HyperLink>
    <hr />
    <asp:HyperLink ID="HyperLink5" NavigateUrl="~/GATE/GateDetails.aspx" 
        runat="server" BorderStyle="None" ForeColor="#1C7BAA" Font-Underline="false" 
        style="height: 19px" >About GATE</asp:HyperLink>
         
    
</center>

</fieldset>
</center>
</asp:Content>

