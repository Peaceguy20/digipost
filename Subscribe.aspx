<%@ Page Title="" Language="C#" MasterPageFile="~/Em.master" AutoEventWireup="true" CodeFile="Subscribe.aspx.cs" Inherits="Subscribe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 180px;
        }
        .style13
        {
            border: 3px inset #0000FF;
            padding: 1px 4px;
            width: 180px;
            color: #0000FF;
            font-size: large;
        }
        .style14
        {
            width: 318px;
        }
        .style15
        {
            border: 3px inset #0000FF;
            padding: 1px 4px;
        }
        .style16
        {
            border: 3px inset #0000FF;
            padding: 1px 4px;
            width: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="height:auto ; width:1000px; margin-left:150px"  >

    <div style="height:300px; width:800px; margin-left:70px; margin-top:50px;">

        <table style="width: 100%; height: 114px;">
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    Enter Email Address :</td>
                <td class="style16">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="34px" 
                        Width="292px"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:Button ID="Button1" runat="server" BackColor="#3333FF" CssClass="textbox" 
                        Text=" SubScribe With Us" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>

    </div>
</asp:Content>

