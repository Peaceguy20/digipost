<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="AccountOpen.aspx.cs" Inherits="NewCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 39px;
        }
        .style3
        {
            border-style: groove;
            border-width: 1px;
            height: 39px;
            font-family: Calibri;
            font-size: large;
            width: 217px;
        }
        .style4
        {
            border-style: groove;
            border-width: 1px;
            height: 52px;
            font-family: Calibri;
            font-size: large;
            width: 217px;
        }
        .style5
        {
            border-style: groove;
            border-width: 1px;
            font-family: Calibri;
            font-size: large;
            width: 217px;
        }
        .style7
        {
            border-style: groove;
            border-width: 1px;
            height: 52px;
        }
        .style8
        {
            border-style: groove;
            border-width: 1px;
            height: 39px;
            width: 47px;
        }
        .style9
        {
            font-size: large;
            color: #0066FF;
        }
        .style10
        {
            color: #0066FF;
        }
        .style11
        {
        }
        .style12
        {
            text-align: center;
            color: #FF0000;
            font-size: xx-large;
        }
        .style13
        {
            border-style: groove;
            border-width: 1px;
        }
        .style14
        {
            border-style: groove;
            border-width: 1px;
            color: #0066FF;
        }
        .auto-style1 {
            border-style: groove;
            border-width: 1px;
            height: 39px;
            width: 47px;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height:auto ; width:1000px; margin-left:150px"  >
    
    <div style="height:50px; width:953px; margin-left:20px; margin-top:20px;" 
        class="style12">
        Application Form For New&nbsp; Account Opening </div>
    
    <div style="height:700px; width:953px; margin-left:20px; margin-top:50px;">

        <table style="width: 100%; height: 645px;">
            <tr>
                <td class="style5">
                    Your Request New Account Number Is:</td>
                <td class="style13" colspan="2">
                    <asp:Label ID="Rid" runat="server" CssClass="textbox" Width="150px"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Enter Your FullName:</td>
                <td class="style13" colspan="2">
                    <asp:TextBox ID="fname" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Select Account Type:</td>
                <td class="style8">
                    <asp:DropDownList ID="ddlActype" runat="server" AutoPostBack="True" 
                        CssClass="textbox" Height="21px">
                        <asp:ListItem>Senior Citizen Saving Scheme</asp:ListItem>
                        <asp:ListItem>Sukanya Samriddhi Yojana (SSY)</asp:ListItem>
                        <asp:ListItem>Post Office Monthly Income Scheme (MIS)</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Contact Number:</td>
                <td class="style8">
                    <asp:TextBox ID="txtContactNO" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Invest Amount:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtAmount" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAmount" ErrorMessage="Enter Amount"></asp:RequiredFieldValidator>
                </td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="textbox" Font-Size="15pt" 
                        Height="45px" Text="Invest Now" Width="224px" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl" runat="server" Font-Size="Large" ForeColor="#3333CC" 
                        Width="800px"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
    </div>
</asp:Content>

