<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dcat.aspx.cs" Inherits="student_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Repeater ID="Repeater1" runat="server" >
    <HeaderTemplate>
       <table> 
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td>  
                <asp:HyperLink ID="HyperLink1" Target="f1" runat="server" NavigateUrl=<%#   "../CAT/"+ "Material/" + Eval("fn") %> runat="server"><%# Eval("fn") + "<br />" %></asp:HyperLink>                                           
                
            </td>
            
        </tr>
        <tr><td></td></tr>
     </ItemTemplate>
     <FooterTemplate>
        
        </table>
     </FooterTemplate>
    
    
</asp:Repeater>
 <iframe id="Iframe1" src="" name="f1" runat="server" ></iframe>
 <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>   
</asp:Content>

