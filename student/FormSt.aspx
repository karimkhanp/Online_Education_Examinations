<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FormSt.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <title>Registration Form</title>
    
    <style type="text/css">
       
        #Submit1
        {
            z-index: 1;
            left: 98px;
            top: 597px;
            position: absolute;
        }
        #Reset1
        {
            z-index: 1;
            left: 104px;
            top: 598px;
            position: absolute;
        }
        #img1
        {
            height: 173px;
            width: 141px;
        }
        .style6
        {
            width: 461px;
            height: 14px;
        }
        .style7
        {
            width: 95px;
            height: 14px;
        }
        .style10
        {
            width: 461px;
        }
        .style11
        {
            width: 95px;
        }
        .style12
        {
            width: 461px;
            height: 30px;
        }
        .style13
        {
            width: 461px;
            height: 57px;
        }
        .style14
        {
            height: 57px;
        }
        .style16
        {
            width: 95px;
            height: 38px;
        }
        .style17
        {
            width: 461px;
            height: 38px;
        }
        </style>
    
    
   
    <div style="text-align: center">
    <fieldset>
        <span style="font-size: 24pt; font-family: Castellar; font-weight: bold; font-style: inherit; font-variant: small-caps; text-transform: capitalize; color: #000080;">
                    Registration Form<br />
        </span>
        
        <span style="color: #ff0000; font-size: 15pt; font-family: Pristina;"> 
        <br />
        * Mandatory Fields are required..!</span>
        <table width="100%">
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10" align="right">
                    First Name : <sup style="color:red">*</sup>     
                </td>
                <td class="style11" align="left">  
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="First Name required" 
                    SetFocusOnError="true" Display="Dynamic" Font-Names="Calibri" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10" align="right">
                    Last Name : <sup style="color:red">*</sup> 
                </td>
                <td class="style11" align="left">  
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Last Name required" 
                    SetFocusOnError="true" Display="Dynamic" Font-Names="Calibri"></asp:RequiredFieldValidator>
                </td>    
            </tr>
            
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style12">
                    Gender :      
</td>
                <td align="left" >
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    
                    </asp:RadioButtonList>
                    
                    </td> 
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    Date of Birth : </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList2" name="que" runat="server" Width="64px" 
                      Height="19px" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                        AutoPostBack="True">     
                     </asp:DropDownList>
                    
                    
                    <asp:DropDownList ID="DropDownList3" name="que" runat="server" Width="56px" 
                      Height="19px" AutoPostBack="True">
                     </asp:DropDownList>
             
                    
                    <asp:DropDownList ID="DropDownList4" name="que" runat="server" Width="62px" 
                      Height="19px" AutoPostBack="True">
                    </asp:DropDownList>
                    
                    </td>    
            </tr>
            
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    Address:</td>
                <td class="style11" align="left">
                    <asp:TextBox ID="TextBox7" TextMode="MultiLine"  runat="server" Width="281px"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    City:<sup style="color:red">*</sup></td>
                <td class="style11" align="left">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="City Name is required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate" 
                        Font-Names="Calibri"></asp:RequiredFieldValidator>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    State:</td>
                <td class="style11" align="left">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style6">
                    Country:<sup style="color:red">*</sup></td>
                <td class="style7" align="left">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Country required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate" 
                        Font-Names="Calibri"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    Postal Code:<sup style="color:red">*</sup></td>
                <td class="style11" align="left">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="Postal code required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate" 
                        Font-Names="Calibri"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    User Name : <sup style="color:red">*</sup></td>
                <td style="font-family: Candara; font-size: medium; color: #FF0000;" 
                    class="style11" align="left">
                    <asp:TextBox id="TextBox3" runat="server" MaxLength="15" /><asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
                   <%-- <asp:Button ID="Button2" runat="server" Text="Check availibility"  onclick="Button2_Click" />--%>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="User Name required" 
                    SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>     
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10" valign="top">
                    Password:<sup style="color:red">*</sup></td>
                <td class="style11" align="left">
                    <asp:TextBox id="TextBox4" runat="server" EnableViewState="true"
                    TextMode="Password" MaxLength="15" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Password required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate" 
                        Font-Names="Calibri"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="left">
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10" valign="top">
                    Confirm Password:<sup style="color:red">*</sup></td>
                <td align="left">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Confirmation Password required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate" 
                        Font-Names="Calibri"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords do not match" 
                    Display="Dynamic" ValidationGroup="validate" Font-Names="Calibri"></asp:CompareValidator></td>
            </tr>
            
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    Enter security question : <sup style="color:red">*</sup></td>
                <td class="style11" align="left">  
                    <asp:DropDownList ID="DropDownList1" name="que" runat="server" Width="236px" 
                      Height="24px">
                     </asp:DropDownList>
                </td>
            
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10" valign="top">
                    Answer : <sup style="color:red">*</sup></td>
                <td class="style11" align="left">  
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox14" ErrorMessage="Answer required" 
                    SetFocusOnError="true" Display="Dynamic" ValidationGroup="validate" 
                        Font-Names="Calibri" BorderStyle="None" Width="124px"></asp:RequiredFieldValidator>     

                </td>
            
            </tr>
            
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style13" valign="top">
                    
                    Email address : <sup style="color: red">*</sup></td>
                <td width="100" align="left" class="style14" valign="top">
                    <asp:TextBox ID="TextBox6" runat="server" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Email Address required" 
                    SetFocusOnError="true" Display="Dynamic" Font-Names="Calibri" 
                        BorderStyle="None" Width="181px" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" 
                    ValidationExpression="^\S+@\S+\.\S+$" 
                        ErrorMessage="Enter a valid E-mail address" Font-Names="Calibri" 
                        BorderStyle="None" Width="216px"></asp:RegularExpressionValidator></td>    
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style17" valign="top">
                    Photograph : </td>
                <td class="style16" align="center">
                        
                    <asp:FileUpload ID="FileUpload1" runat="server" />  
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^(.*\.jpg)|(.*\.bmp)|(.*\.jpeg)|(.*\.png)|(.*\.gif)$"
                     ControlToValidate="FileUpload1" ErrorMessage="Invalid image type!"  Display="Dynamic"
                     runat="server" BorderStyle="None" Width="159px"></asp:RegularExpressionValidator>                 
                </td>
            </tr>        
            <tr>
                <td align="right">&nbsp;</td>
                <td align="left">
                    <asp:Image ID="myImage" runat="server" ImageUrl="~/CaptchaControl.aspx" 
                        Height="57px" Width="197px" /></td>
            </tr>
            <tr>
                <td align="right" 
                    style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;">
                    Type code:&nbsp;</td>
                <td align="left"><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                             </td>
            </tr>   
            <tr>
                <td align="center" width="100%" colspan="2" >
                    <asp:Label ID="MessageLabel" 
                        runat="server" ForeColor="Red" Font-Names="Calibri"></asp:Label><br /></td>
                
            </tr>
            <tr>
                <td align="right" width="50%">
                
                    <input  style="color:#000000; background-color:#FFFFFF; font-weight:bold; background-repeat: no-repeat;" 
                    id="Reset2" type="reset" value="Reset"/></td>
                <td align="left">
                    <asp:Button ID="Button1" style="color:#000000; background-color:#FFFFFF; font-weight:bold; background-repeat: no-repeat;" 
                    runat="server" Text="Submit" ForeColor="#FFFF66" onclick="Button1_Click" /></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>-
        </table>
     </div>
     </fieldset>
     <div>
        <center>
            <asp:Label ID="Label1" runat="server" ForeColor="Green" Visible="false"></asp:Label>  
        </center>
    </div>
    
  
    
</asp:Content>

