<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <center>
        <fieldset><legend></legend>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/DetailsS.aspx" >All Student's details</asp:HyperLink>
    <br /><br /><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin/DetailsF.aspx" >All Faculty's details</asp:HyperLink>
    <br /><br /><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin/RqStudent.aspx" >Requested student's application</asp:HyperLink>
    <br /><br /><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/RqFaculty.aspx" >Requested faculty's application</asp:HyperLink>
    </fieldset>
    </center>
</asp:Content>

