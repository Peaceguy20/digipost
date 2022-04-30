<%@ Page Title="" Language="C#" MasterPageFile="~/Em.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            text-align: left;
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
            font-size: medium;
        }
        .style13
        {
            color: #000000;
            font-size: medium;
        }
        .style14
        {
            height: 39px;
        }
        .style15
        {
            height: 49px;
        }
        .style16
        {
            height: 41px;
        }
        .style17
        {
            height: 50px;
        }
        .style18
        {
            height: 48px;
        }
        .style19
        {
            height: 45px;
        }
        .style20
        {
            height: 40px;
        }
        .style21
        {
            height: 66px;
        }
        .btnStyle
        {}
        .style23
        {
            font-family: "Courier New", Courier, monospace;
            font-size: x-large;
            color: #333300;
        }
        .style24
        {
            height: 78px;
            color: #000000;
        }
        .style25
        {
            height: 65px;
        }
        .auto-style1 {
            width: 993px;
            height: auto;
        }
        .auto-style5 {
            height: 49px;
            width: 173px;
        }
        .auto-style6 {
            height: 49px;
            width: 275px;
        }
        .auto-style7 {
            height: 49px;
            width: 531px;
        }
        .auto-style8 {
            height: 41px;
            width: 173px;
        }
        .auto-style9 {
            height: 41px;
            width: 275px;
        }
        .auto-style10 {
            height: 41px;
            width: 531px;
        }
        .auto-style11 {
            height: 50px;
            width: 173px;
        }
        .auto-style12 {
            height: 50px;
            width: 275px;
        }
        .auto-style13 {
            height: 50px;
            width: 531px;
        }
        .auto-style17 {
            height: 45px;
            width: 173px;
        }
        .auto-style18 {
            height: 45px;
            width: 275px;
        }
        .auto-style19 {
            height: 45px;
            width: 531px;
        }
        .auto-style20 {
            height: 40px;
            width: 173px;
        }
        .auto-style21 {
            height: 40px;
            width: 275px;
        }
        .auto-style22 {
            height: 40px;
            width: 531px;
        }
        .auto-style23 {
            height: 66px;
            width: 173px;
        }
        .auto-style24 {
            height: 66px;
            width: 275px;
        }
        .auto-style25 {
            height: 66px;
            width: 531px;
        }
        .auto-style29 {
            height: 39px;
            width: 173px;
        }
        .auto-style31 {
            height: 48px;
            width: 173px;
        }
        .auto-style33 {
            width: 173px;
        }
        .auto-style35 {
            height: 39px;
            width: 275px;
        }
        .auto-style36 {
            height: 39px;
            width: 531px;
        }
        .auto-style37 {
            height: 48px;
            width: 275px;
        }
        .auto-style38 {
            height: 48px;
            width: 531px;
        }
        .auto-style39 {
            width: 275px;
        }
        .auto-style40 {
            width: 531px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:150px; height: auto; width: 993px; border:2 solid black">
        <div >
            <table style="background-color: #fffff9; " class="auto-style1">
                <tr>
                    <td colspan="3" align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td  class="style17" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <span class="style23">&nbsp;Registration Form
                        </span> 
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style29">
                        <asp:Label ID="Label2" runat="server" Text="Full Name" CssClass="lblStyle" 
                            ForeColor="#404037" style="color: #000000; font-size: medium;"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="txtName" runat="server" 
                            Style="text-transform: uppercase; color: #000000;" onkeypress="return isNumberKey(event)"
                            CssClass="textbox" ></asp:TextBox>
                    </td>
                    <td class="auto-style36">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style29">
                        Enter Date Of Birth
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="txtDob" runat="server" 
                            Style="text-transform: uppercase; color: #000000;" onkeypress="return isNumberKey(event)"
                            CssClass="textbox" TextMode="Date" ></asp:TextBox>
                    </td>
                    <td class="auto-style36">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" 
                            style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Invalid_Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style8">
                        <asp:Label ID="Label4" runat="server" Text="Password" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" 
                            TextMode="Password" style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style11">
                        <asp:Label ID="Label5" runat="server" Text="Confirm password" 
                            ForeColor="Black" CssClass="style12"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtCnfrmPwd" runat="server" CssClass="textbox" 
                            TextMode="Password" style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCnfrmPwd" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                            ControlToValidate="txtCnfrmPwd" ErrorMessage="Passwords_mismatch" Font-Size="9pt"
                            ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style31">
                        <asp:Label ID="Label6" runat="server" Text="Gender" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td class="auto-style37">
                        <asp:RadioButtonList ID="rbtnListGender" runat="server" RepeatDirection="Horizontal"
                            Width="275px" Height="25px" BackColor="White" CssClass="txtStyle" 
                            ForeColor="#0066FF">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style38">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                            ControlToValidate="rbtnListGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style31">
                        <asp:Label ID="Label8" runat="server" Text="Mobile" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td class="auto-style37">
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="textbox" 
                            style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td class="auto-style38">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                            ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtMobile" ErrorMessage="Invalid Mobile" Font-Size="9pt" 
                            ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
               
                <tr>
                    <td align="right" class="auto-style17">
                        <asp:Label ID="Label10" runat="server" Text="State" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtCountry" runat="server" CssClass="textbox" 
                            style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCountry" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style20">
                        <asp:Label ID="Label12" runat="server" Text="City" CssClass="style13"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="textbox" 
                            style="color: #000000" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style23">
                        <asp:Label ID="Label13" runat="server" Text="Address" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox" Height="45px" 
                            style="color: #000000" TextMode="MultiLine" ForeColor="Black"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"
                            ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style33">
                        <asp:Label ID="Label14" runat="server" Text="Select Security Pin" ForeColor="Black" 
                            CssClass="style12"></asp:Label>
                    <br class="style3" />
                    </td>
                    <td align="left" class="auto-style39">
                        <asp:TextBox ID="txtPin" runat="server" style="text-align: left" 
                            CssClass="textbox" MaxLength="4"></asp:TextBox>
                    </td>
                    <td align="left" class="auto-style40">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage=" Please Enter PIN "
                            ControlToValidate="txtPin" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                     
         
                    <td align="right" class="auto-style33">
                        Upload Pancard Image:</td>
                    <td align="left" class="auto-style39">
                       <asp:FileUpload ID="FileUpload1" runat="server" CssClass="login_input" /></td>
                    <td align="left" class="auto-style40">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*"
                            ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style33">
                       Upload Aadhar Card Image:</td>
                    <td align="left" class="auto-style39">
                         <asp:FileUpload ID="FileUpload2" runat="server" CssClass="login_input" /></td>
                    <td align="left" class="auto-style40">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*"
                            ControlToValidate="FileUpload2" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" class="style24">
                        <span class="style3">&nbsp;</span><asp:Button ID="btnSubmit" runat="server" 
                            Text="Submit" OnClick="btnSubmit_Click"
                            CssClass="btnStyle" ForeColor="#003366" Height="50px" Width="150px" 
                            BorderColor="#6699FF" BorderStyle="Solid" />
                        <span class="style3">&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CausesValidation="False"
                            CssClass="btnStyle" ForeColor="#404037" BorderColor="#6699FF" 
                            BorderStyle="Solid" Height="48px" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center" class="style25">
                        <asp:Label ID="lblMessage" runat="server" CssClass="style2" ForeColor="Red" 
                            Height="20px" Width="327px" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
                </table>
        </div>
    </div>
</asp:Content>

