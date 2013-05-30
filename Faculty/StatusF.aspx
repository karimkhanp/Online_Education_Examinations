<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StatusF.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<center>
    <span style=" font-style:oblique;color:Green ">Your applicaton submitted successfully..!!..</span>
    <br />
    <br />Do you want to add another application?&nbsp; 
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="false"  NavigateUrl="~/faculty/FormFaculty.aspx" EnableTheming="False" BorderStyle="None">Click here!</asp:HyperLink>
</center>


</asp:Content>

