<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_homeFaculty.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <center>
                <br />
                <asp:Label ID="Label3" runat="server" Font-Names="Palatino Linotype" 
                    Font-Size="Large" ForeColor="#66FF66" Text="WELCOME,"></asp:Label>
&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Names="Palatino Linotype" 
                    Font-Size="Larger" ForeColor="#CC00CC"></asp:Label>
                <br />
                <br />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" 
                            BorderStyle="None" onclick="LinkButton2_Click" 
                    Font-Names="Calibri"  >Upload Study Material and Test Paper</asp:LinkButton>
            <br />
                <hr noshade="noshade" style="color: #CCCCFF" />
            <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" 
                            BorderStyle="None" onclick="LinkButton4_Click" 
                    Font-Names="Calibri">UPload Latest News</asp:LinkButton>            
            <br />
                <hr noshade="noshade" style="color: #CCCCFF" />
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" 
                            BorderStyle="None" onclick="LinkButton5_Click" 
                    Font-Names="Calibri">View Study Material and Test Paper</asp:LinkButton>
                <hr noshade="noshade" style="color: #CCCCFF" />
                <asp:LinkButton ID="LinkButton7" runat="server" Font-Names="Calibri" 
                    Font-Underline="False" onclick="LinkButton7_Click">Add questions to the Mock 
                Test</asp:LinkButton>
            <br /> 
            <br />
            
            </center>
            
       

</asp:Content>

