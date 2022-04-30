<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="AccountType.aspx.cs" Inherits="Lost" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style3
        {
            text-align: left;
            font-family: Aharoni;
            color: #000000;
            font-size: x-large;
        }
        .style4
        {
            text-align: center;
            width: 90px;
        }
        .style5
        {
     }
       .style7
       {
           text-align: center;
           width: 90px;
           height: 49px;
       }
       .style8
       {
           border: 1px solid #166BA2;
        text-align: center;
           font-family: Aharoni;
           color: #000000;
           font-size: x-large;
           width: 157px;
           height: 49px;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
    }
       .style9
       {
           text-align: left;
           font-family: Aharoni;
           color: #000000;
           font-size: x-large;
           height: 49px;
       }
       .style15
       {
        border: 1px solid #166BA2;
        text-align: left;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 38px;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
    }
       .style16
       {
        border: 1px solid #166BA2;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 38px;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
    }
       .style17
       {
        border: 1px solid #166BA2;
        text-align: left;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 40px;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
    }
       .style18
       {
        border: 1px solid #166BA2;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 40px;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
    }
       .style19
       {
        border: 1px solid #166BA2;
        text-align: left;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 39px;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
    }
       .style20
       {
        border: 1px solid #166BA2;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 39px;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
    }
    .style22
    {
        border: 1px solid #166BA2;
        text-align: left;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 49px;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
    }
     .style28
     {
         color: #9FBEDC;
     }
     .style29
     {
         height: 242px;
     }
        .auto-style1 {
            border: 1px solid #166BA2;
            text-align: left;
            font-family: Aharoni;
            color: #000000;
            font-size: x-large;
            width: 157px;
            height: 49px;
            padding-left: 4px;
            padding-right: 3px;
            padding-top: 1px;
            padding-bottom: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto; width:auto">

<div style="height: auto; width:1000px; margin-left:150px">


    

    <table style="width:100%; height: 259px;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    class="style28">&nbsp;&nbsp;Selected Account Opening Type :<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </span> </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="auto-style1">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
              Request&nbsp; Account Number:</b></td>
            <td class="style22">
                <asp:Label ID="cnumber" runat="server" ForeColor="#3366FF"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="auto-style1">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Start
                Date:</b></td>
            <td class="style22">
                <asp:Label ID="Startdate" runat="server" ForeColor="#0066FF"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="auto-style1">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                &nbsp;End
                Date:</b></td>
            <td class="style22">
                <asp:Label ID="endDate" runat="server" ForeColor="#0066FF"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="9" class="style5">
                &nbsp;</td>
            <td class="style15">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *Full Name</b></td>
            <td class="style16">
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox" ></asp:TextBox>
            </td>
            <td rowspan="9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *Account Type :</b></td>
            <td class="style18">
                <asp:TextBox ID="txtaccountType" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td class="style19">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Register Mobile No :</b></td>
            <td class="style20">
                <asp:TextBox ID="txtMobileNo" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        
      
        <tr>
            <td class="style19">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
               &nbsp;Amount:</b></td>
            <td class="style20">
                <asp:TextBox ID="txtAmount" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        
      
        <tr>
            <td class="style19">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
               &nbsp;Intrest Rate %:</b></td>
            <td class="style20">
                <asp:TextBox ID="txtRate" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        
      
        <tr>
            <td class="style29" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#0066FF" BorderColor="Blue" 
                    BorderWidth="1px" Font-Size="Large" ForeColor="White" Height="44px" Text="Pay Amount" 
                    Width="190px" onclick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            <td class="style29">
                </td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


    

</div>


</div>
</asp:Content>

