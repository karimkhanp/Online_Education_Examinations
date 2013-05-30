<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tgre.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    <script type="text/javascript" src="CountDown.js"></script>
    <script type="text/javascript">
    window.onload=WindowLoad;
    function WindowLoad(event)
     {
    ActivateCountDown("CountDownPanel", 10);
    }
</script>
       
   
    <br />
    <table class="style8">
        <tr>
            <td style="font-family: Calibri; color: #800080">
                <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="10000" >
                </asp:Timer>
                <asp:ScriptManager ID="ScriptManager1" runat="server" >
                </asp:ScriptManager>
                <br />
                Timer Remaining:<span id="CountDownPanel" style="color:Aqua" ></span></td>
        </tr>
    </table>
    <asp:Label ID="Label3" runat="server" Text="Label" Visible="false"></asp:Label>
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        backcolor="White" bordercolor="#CCCCCC" borderstyle="None" borderwidth="1px" 
        cellpadding="4" forecolor="Black" gridlines="Horizontal" >
<Columns>
<asp:TemplateField>
    <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("que") %>' ></asp:Label><hr />
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="abc" Checked="true" 
                    Text='<%# Eval("opn1") %>' /><br />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="abc" 
                    Text='<%# Eval("opn2") %>' /><br />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="abc" 
                    Text='<%# Eval("opn3") %>' /><br />
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="abc" 
                    Text='<%# Eval("opn4") %>' /><br />
                <br />
            
            
    </ItemTemplate>
</asp:TemplateField>
</Columns>

    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
</asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />  
    <asp:Label ID="Label2" runat="server" Visible="false" ></asp:Label>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
        SelectCommand="SELECT * FROM [gre_test]"></asp:SqlDataSource>



</asp:Content>

