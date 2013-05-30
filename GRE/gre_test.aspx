<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gre_test.aspx.cs" Inherits="Faculty_Default" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="
        SELECT que_gre.que, Questions.Choices, ans_gre.ans 
        FROM Questions 
                INNER JOIN Surveys ON Surveys.Question = Questions.ID 
                LEFT OUTER JOIN Answers ON Questions.ID = Answers.Question 
                        AND Users.ID = Answers.User 
        WHERE (Surveys.User = @User) 
        ORDER BY Surveys.Rank">
    <SelectParameters>
        <asp:QueryStringParameter Name="User" QueryStringField="id" />
    </SelectParameters>
</asp:SqlDataSource>
--%><%--<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    
   
    <HeaderTemplate><table></HeaderTemplate>
    <ItemTemplate>
        <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Question") %>'></asp:Label></td>
                <td><asp:Label runat="server" ID="ChoicesLabel"/></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
        SelectCommand="SELECT [que] FROM [que_gre]"></asp:SqlDataSource>
    --%>
&nbsp;<%--
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
        SelectCommand="SELECT * FROM ans_gre "></asp:SqlDataSource>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
        SelectCommand="SELECT ans_gre.*, que_gre.* FROM ans_gre CROSS JOIN que_gre" >--%>
        <%--<SelectParameters>
            <asp:QueryStringParameter Name="que_gre" QueryStringField="id" />
        </SelectParameters>--%>
 <%--   </asp:SqlDataSource>





<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" 
    onitemdatabound="Repeater1_ItemDataBound" ondatabinding="Page_Init" 
        oninit="Page_Init" onload="Page_Load">
    <HeaderTemplate><table></HeaderTemplate>
    <ItemTemplate>
        <tr>
                
                <td><%# Eval("que") %>
                    
                <td><asp:Label runat="server" ID="ChoicesLabel"/></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
</asp:Repeater>

<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
--%>


<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
    SelectCommand="
        SELECT Questions.Text AS Question, Questions.Choices, Answers.Answer 
        FROM Questions 
                INNER JOIN Surveys ON Surveys.Question = Questions.ID 
                LEFT OUTER JOIN Answers ON Questions.ID = Answers.Question 
                        AND Users.ID = Answers.User 
        WHERE (Surveys.User = @User) 
        ORDER BY Surveys.Rank">
    <SelectParameters>
        <asp:QueryStringParameter Name="User" QueryStringField="id" />
    </SelectParameters>
</asp:SqlDataSource>

<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
    onitemdatabound="Repeater1_ItemDataBound">
    <HeaderTemplate><table></HeaderTemplate>
    <ItemTemplate>
        <tr>
                <td><%# Eval("Question") %></td>
                <td><asp:Label runat="server" ID="ChoicesLabel"/></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate></table></FooterTemplate>


</asp:Repeater>


<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>--%>







<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="
        select que from que_gre inner join ans_gre on ans_gre.no = que_gre.no
where que_gre = @que">
    <SelectParameters>
        <asp:QueryStringParameter Name="que" QueryStringField="id" />
    </SelectParameters>
</asp:SqlDataSource>


<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
    
   
    <HeaderTemplate><table></HeaderTemplate>
    <ItemTemplate>
        <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("que") %>'></asp:Label></td>
                <td><asp:Label runat="server" ID="ChoicesLabel"/></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>

<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>









</asp:Content>

