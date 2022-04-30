<%@ Page Title="" Language="C#" MasterPageFile="~/Em.master" AutoEventWireup="true" CodeFile="forgotpass.aspx.cs" Inherits="Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            color: #000000;
        }
        .style3
        {
            border: 2px double #000000;
            padding: 1px 4px;
            color: #FFFFFF;
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
        .style4
        {
            font-size: xx-large;
        }
        .style5
        {
            border: 2px double #000000;
            padding: 1px 4px;
            color: #000000;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            width: 186px;
            height: 87px;
        }
        .style6
        {
            border: 2px double #000000;
            padding: 1px 4px;
            color: #000000;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            width: 186px;
            height: 90px;
        }
        .style7
        {
            width: 284px;
            height: 90px;
            border: 2px double #000000;
            padding: 1px 4px;
        }
        .style8
        {
            width: 284px;
            height: 87px;
            border: 2px double #000000;
            padding: 1px 4px;
        }
        .style9
        {
            width: 186px;
            height: 80px;
            border: 2px double #000000;
            padding: 1px 4px;
        }
        .style10
        {
            width: 284px;
            height: 80px;
            border: 2px double #000000;
            padding: 1px 4px;
        }
        .style12
        {
            border: 2px double #000000;
            padding: 1px 4px;
        }
        .style15
        {
            text-align: center;
            font-size: xx-large;
            font-family: "Courier New", Courier, monospace;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto ; width:1000px; margin-left:150px"  >
    <div style="height: auto; width:800px; margin-left:70px; margin-top:50px;">

<hr />
    <table style="width: 100%; height: 360px;">
        <tr>
            <td colspan="3" class="style15" >
                
               Reset Password</td>
       </tr>
        <tr>
            <td 
                class="style5">
                Enter MobileNO:</td>
            <td class="style8">
                <asp:TextBox ID="Email1" runat="server" BorderColor="#404037" 
                    BorderStyle="Solid" Height="38px" Width="266px" CssClass="style2"></asp:TextBox>
            </td>
            <td rowspan="6" style="width: 242px" class="style12">
                <asp:Image ID="Image2" runat="server" Height="356px" 
                    ImageUrl="~/image/secure.png" Width="269px" />
            </td>
        </tr>
        <tr>
            <td 
                class="style5">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button2" runat="server" BorderColor="#6A4141" 
                    BorderStyle="Solid" Font-Size="Large" ForeColor="#404037" Height="40px" 
                    Text="Verify" Width="216px" CssClass="style2" onclick="Button1_Click" CausesValidation="False" />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td 
                class="style5">
                Enter OTP:</td>
            <td class="style8">
                <asp:TextBox ID="txtopt" runat="server" BorderColor="#404037" 
                    BorderStyle="Solid" Height="37px" Width="266px" CssClass="style2" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td 
                class="style6">
                Enter New PassWord :</td>
            <td class="style7">
                <asp:TextBox ID="password" runat="server" BorderColor="#404037" 
                    BorderStyle="Solid" Height="37px" Width="266px" CssClass="style2" 
                    TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPWD" runat="server" 
                    ControlToValidate="password" ErrorMessage="Please enter Password" 
                    CssClass="style2"/>
            </td>
        </tr>
        <tr>
            <td 
                class="style6">
                Enter New Secure PIN :</td>
            <td class="style7">
                <asp:TextBox ID="pin" runat="server" BorderColor="#404037" 
                    BorderStyle="Solid" Height="37px" Width="266px" CssClass="style2" 
                    TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="rfvPWD0" runat="server" 
                    ControlToValidate="password" ErrorMessage="Please enter PIN" 
                    CssClass="style2"/>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Agency FB'; font-size: x-large; color: #404037; " 
                class="style9">
                &nbsp;</td>
            <td class="style10">
                <span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Button ID="Button1" runat="server" BorderColor="#6A4141" 
                    BorderStyle="Solid" Font-Size="Large" ForeColor="#404037" Height="40px" 
                    Text="Reset Password" Width="216px" CssClass="style2" onclick="Button1_Click1" />
            </td>
        </tr>
    </table>

    <hr />
</div>
 <div style="height:10px; width:1000px;  margin-top:30px; background-color:transparent">
</div>
</div>
</asp:Content>

