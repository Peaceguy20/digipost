<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration1.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="VM.css" rel="stylesheet" type="text/css" />
    <script src="js-image-slider.js" type="text/javascript"></script>

    <link href="js-image-slider.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
        function checkFileExtension(elem) {
            var filePath = elem.value;


            if (filePath.indexOf('.') == -1)
                return false;

            var validExtensions = new Array();
            var ext = filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();

            validExtensions[0] = 'docx';
            validExtensions[1] = 'doc';
            validExtensions[2] = 'pdf';

            for (var i = 0; i < validExtensions.length; i++) {
                if (ext == validExtensions[i])
                    return true;
            }


            alert('The file extension ' + ext.toUpperCase() + ' is not allowed!'+<br/>+"Allowed Extensions *.doc/*.docx");
            return false;
        }
    </script>
    <script type="text/javascript">
      <!--
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return true;

            return false;
        }
      
      //-->
    </script>
    <style type="text/css">
        .style2
        {
            color: #FFFFFF;
        }
        .style3
        {
            color: #000000;
        }
    </style>
    <style type="text/css">
        .style2
        {
            width: 212px;
        }
        .style3
        {
            width: 212px;
            height: 155px;
        }
        .style12
        {
            color: #000000;
            width: 212px;
        }
        .style13
        {
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <div style="height: auto; width:1200px">
    <div style="height:150px; width:1000px; margin-left:150PX; margin-top:20px">
        <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="LOGO.gif" 
            Width="1000px" />
              </div>
            <div style="height:10px; width:1000px; margin-left:150PX; background-color:Transparent">
            </div>
        
   <div class="templatemo_topmenu">

  <ul>
      <li><a href="Home.aspx" class="current">Home Page</a></li>

      <li><a href="Registration.aspx">Registration</a></li>
      <li><a href="#">Instatnt Recharge</a></li>
  
       <li><a href="Login.aspx">Login</a></li>
      <li><a href="#">Contact Us</a></li>
      <li><a href="abtus.aspx">About Us</a></li>
    </ul>

  </div>

  <div style="height:5px; width:1000px; margin-left:150PX; background-color: Transparent">
            </div>
    <div style="margin-left:200px">
        <div id="RegistrationContainer">
            <table style="width: 600px; margin: auto">
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="Label1" runat="server" Text=" Registration Form" Font-Bold="True"
                            Font-Size="14pt" CssClass="style2" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="style2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label2" runat="server" Text="Full Name" CssClass="lblStyle" 
                            ForeColor="#404037" style="color: #000000"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" 
                            Style="text-transform: uppercase; color: #000000;" onkeypress="return isNumberKey(event)"
                            CssClass="txtStyle" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtStyle" 
                            style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Invalid_Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label4" runat="server" Text="Password" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="txtStyle" 
                            TextMode="Password" style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label5" runat="server" Text="Confirm password" 
                            ForeColor="Black" CssClass="style12"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCnfrmPwd" runat="server" CssClass="txtStyle" 
                            TextMode="Password" style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCnfrmPwd" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                            ControlToValidate="txtCnfrmPwd" ErrorMessage="Passwords_mismatch" Font-Size="9pt"
                            ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label6" runat="server" Text="Gender" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rbtnListGender" runat="server" RepeatDirection="Horizontal"
                            Width="275px" Height="25px" BackColor="White" CssClass="txtStyle">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                            ControlToValidate="rbtnListGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label8" runat="server" Text="Mobile" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="txtStyle" 
                            style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                            ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtMobile" ErrorMessage="Invalid Mobile" Font-Size="9pt" 
                            ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
               
                <tr>
                    <td align="right">
                        <asp:Label ID="Label10" runat="server" Text="State" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCountry" runat="server" CssClass="txtStyle" 
                            style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCountry" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style1">
                        <asp:Label ID="Label12" runat="server" Text="City" CssClass="style13"></asp:Label>
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="txtStyle" 
                            style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td class="style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="Label13" runat="server" Text="Address" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="txtStyle" Height="45px" 
                            style="color: #000000" TextMode="MultiLine" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"
                            ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right">
                    <br class="style3" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2" class="style3">
                        <span class="style3">&nbsp;
                        </span>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"
                            CssClass="btnStyle" ForeColor="#003366" />
                        <span class="style3">&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CausesValidation="False"
                            CssClass="btnStyle" ForeColor="#404037" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="lblMessage" runat="server" CssClass="style2" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    <div id="templatemo_footer">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Copyright © Virtual Money PVT.LTD Mange By Kajal &amp; Himani                                     
                                    </div>

    </div>
    
    </form>
</body>
</html>
