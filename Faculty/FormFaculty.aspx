<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FormFaculty.aspx.cs" Inherits="Default2" %>

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
        .style8
        {
            width: 461px;
            height: 23px;
        }
        .style9
        {
            width: 95px;
            height: 23px;
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
            height: 2px;
        }
        .style13
        {
            width: 95px;
            height: 2px;
        }
        .style14
        {
            width: 461px;
            height: 72px;
        }
        .style15
        {
            width: 95px;
            height: 72px;
        }
        .style17
        {
            height: 45px;
        }
        .style18
        {
            width: 461px;
            height: 45px;
        }
        .style19
        {
            width: 461px;
            height: 58px;
        }
        .style20
        {
            height: 58px;
        }
        .style21
        {
            width: 461px;
            height: 29px;
        }
        .style22
        {
            height: 29px;
        }
        </style>
    
    
   
    <div style="text-align: center">
    <fieldset>
        <span style="font-size: 24pt; font-family: Castellar; font-weight: bold; font-style: inherit; font-variant: small-caps; text-transform: capitalize; color: #000080;">
                    <br />
                    Registration Form<br /><br /> 
        </span>
      
        <span style="color: #ff0000; font-size: 15pt; font-family: Pristina;"> * Mandatory Fields ..!</span>
        <table width="100%">
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    First Name:<sup style="color:red">*</sup></td>
                <td class="style11" align="left">  
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="First Name required" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style12">
                    Last Name:<sup style="color:red">*</sup></td>
                <td class="style13" align="left">  
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="First Name required" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                </td>    
            </tr>
            
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style12">
                    Qualification:<sup style="color:red">*</sup></td>
                <td class="style13" align="left">  
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    
                </td> 
            
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    Work Experience :<sup style="color:red">*</sup></td>
                <td align="left" class="style22">
                       <asp:DropDownList ID="DropDownList5" name="que" runat="server" Width="170px" 
                      Height="22px" >
                           <asp:ListItem>1 year</asp:ListItem>
                           <asp:ListItem>2 years</asp:ListItem>
                           <asp:ListItem>3 years</asp:ListItem>
                           <asp:ListItem>4 years</asp:ListItem>
                           <asp:ListItem>5 years</asp:ListItem>
                           <asp:ListItem>more than 5 years</asp:ListItem>
                     </asp:DropDownList>    
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
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="gender required" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>     
                    
                    </td> 
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style21">
                    Date of Birth : </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList2" name="que" runat="server" Width="64px" 
                      Height="25px" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        
                        
                     </asp:DropDownList>
                    
                    
                    <asp:DropDownList ID="DropDownList3" name="que" runat="server" Width="56px" 
                      Height="19px">
                      
        
                     </asp:DropDownList>
             
                    
                    <asp:DropDownList ID="DropDownList4" name="que" runat="server" Width="62px" 
                      Height="19px">
                      
                      
                    
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
                        ControlToValidate="TextBox8" ErrorMessage="City Name required" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                     State:</td>
                <td class="style11">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style6">
                    Country: <sup style="color:red">*</sup></td>
                <td class="style7">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Country required" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
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
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style14">
                    User Name:<sup style="color:red">*</sup></td>
                <td style="font-family: Candara; font-size: medium; color: #FF0000;" 
                    class="style15" align="left">
                    <asp:TextBox id="TextBox3" runat="server" MaxLength="15" /><asp:Label ID="Label2" runat="server"></asp:Label>
                    <%--<asp:Button ID="Button2" runat="server" Text="check availibility" OnClick="Button2_Click" />--%>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="User Name required" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>     
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style8">
                    Password:<sup style="color:red">*</sup></td>
                <td class="style9" align="left">
                    <asp:TextBox id="TextBox4" runat="server"
                    TextMode="Password" MaxLength="15" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Password required" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style18">
                    Confirm Password:<sup style="color:red">*</sup></td>
                <td align="left" class="style17">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords do not match" 
                    Display="Dynamic"  Height="16px" 
                        SetFocusOnError="true" style="margin-left: 0px; margin-bottom: 0px" 
                        Width="127px"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Confirmation Password required" 
                    SetFocusOnError="true" Display="Dynamic" Height="16px" Width="205px" 
                        style="top: 477px; left: 493px" ></asp:RequiredFieldValidator>
                               </td>
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    Enter security question:</td>
                <td class="style11" align="left">  
                    <asp:DropDownList ID="DropDownList1" name="que" runat="server" Width="236px" 
                      Height="24px">
                     </asp:DropDownList>
                </td>
            
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    Answer : <sup style="color:red">*</sup></td>
                <td class="style11" align="left">  
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
            
            </tr>

            
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style19">
                    
                    Email address : <sup style="color: red">*</sup></td>
                <td width="100" class="style20" align="left">
                    <asp:TextBox ID="TextBox6" runat="server" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Email Address required" 
                    SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" 
                    ValidationExpression="^\S+@\S+\.\S+$" 
                        ErrorMessage="You must enter a valid E-mail address" ></asp:RegularExpressionValidator></td>    
            </tr>
            <tr>
                <td style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;" 
                    class="style10">
                    Photograph : </td>
                <td class="style11" align="left">
                        
                    <asp:FileUpload ID="FileUpload1" runat="server" />  
                        
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^(.*\.jpg)|(.*\.jpeg)|(.*\.bmp)|(.*\.png)|(.*\.gif)$"
                     ControlToValidate="FileUpload1" ErrorMessage="Invalid image type!"  Display="Dynamic"
                     runat="server">
                    </asp:RegularExpressionValidator>                 
                </td>
            </tr>        
            <tr>
                <td align="right">&nbsp;</td>
                <td align="left">
                    <br />
                    <asp:Image ID="myImage" runat="server" ImageUrl="~/CaptchaControl.aspx" 
                        Height="57px" Width="197px" /></td>
            </tr>
            <tr>
                <td align="right" 
                    style="text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: normal; font-style: italic; font-variant: normal; text-transform: capitalize; color: #2E99F1;">
                    Type code:&nbsp;code:&nbsp;</td>
                <td align="left"><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" Text="Validate" OnClick="Button5_Click" 
                        style="height: 26px" /></td>
            </tr>   
            <tr>
                <td align="center" width="100%" colspan="2" ><asp:Label ID="MessageLabel" 
                        runat="server" ForeColor="Red"></asp:Label><br /></td>
                
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
            </tr>
        </table>
    </fieldset>
     </div>
     
     <div>
        <center>
            <asp:Label ID="Label1" runat="server"></asp:Label><span
                
                style="color: #000000; background-color: #FFFFFF; background-repeat: no-repeat; font-size: medium;"> </span>
        </center>
    </div>


</asp:Content>

