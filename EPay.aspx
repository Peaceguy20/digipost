<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="EPay.aspx.cs" Inherits="MobilePay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            border: 1px solid #0066FF;
            padding: 1px 4px;
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
       .style6
       {
        border: 1px solid #166BA2;
        text-align: left;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
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
       .style10
       {
           border: 1px solid #166BA2;
           padding: 1px 3px 1px 4px;
           height: 53px;
       }
       .style11
       {
           height: 53px;
       }
       .style12
       {
           font-size: 20pt;
       }
       .style14
       {
           border: 1px solid #166BA2;
        text-align: center;
           font-family: Aharoni;
           color: #000000;
           font-size: x-large;
        padding-left: 4px;
        padding-right: 3px;
        padding-top: 1px;
        padding-bottom: 1px;
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
    .style23
    {
        text-align: center;
        width: 90px;
        height: 48px;
    }
    .style25
    {
        text-align: left;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 48px;
    }
    .style26
    {
        border: 1px solid #166BA2;
        text-align: left;
        font-family: Aharoni;
        color: #000000;
        font-size: x-large;
        height: 48px;
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
                    class="style28">&nbsp;&nbsp;Online Electricity  Pay  </span> </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
               Transection Number:</b></td>
            <td class="style22">
                <asp:Label ID="cnumber" runat="server" ForeColor="#3366FF"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
               TransectionDate:</b></td>
            <td class="style22">
                <asp:Label ID="date" runat="server" ForeColor="#0066FF"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style8">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                * Select  Operator</b></td>
            <td class="style22">
                <asp:DropDownList ID="DropDownList1" runat="server"  Width="310px" 
                    Height="37px" CssClass="textbox" AutoPostBack="True">
                    <asp:ListItem>MGVCL</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style9">
                </td>
        </tr>
        
            <td class="style23">
                </td>
            <td class="style26">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *Enter Customer Id  No </b></td>
            <td class="style26">
                <asp:TextBox ID="TextBox8" runat="server" Width="301px" CssClass="textbox"></asp:TextBox>
            </td>
            <td class="style25">
                </td>
        </tr>
        <tr>
            <td rowspan="10" class="style5">
                &nbsp;</td>
            <td class="style6" rowspan="2">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Enter Amount :</b></td>
           
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="292px" 
                    CssClass="textbox"></asp:TextBox>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                <span class="style12" 
                    style="color: rgb(255, 255, 255); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(0, 102, 153);">
              Payment Information</span></td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *Full Name</b></td>
            <td class="style16">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" ></asp:TextBox>
            </td>
            <td rowspan="7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *Em Card No :</b></td>
            <td class="style18">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td class="style19">
                <b style="color: rgb(68, 68, 68); font-family: 'Trebuchet MS', Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                E-mail</b></td>
            <td class="style20">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        
      
        <tr>
            <td class="style29" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#0066FF" BorderColor="Blue" 
                    BorderWidth="1px" Font-Size="Large" ForeColor="White" Height="44px" Text="Pay" 
                    Width="190px" onclick="Button1_Click" />
                <br />
                <br />
                </td>
            <td class="style29">
                </td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


    

</div>


</div>
</asp:Content>

