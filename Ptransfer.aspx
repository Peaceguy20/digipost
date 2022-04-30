<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Ptransfer.aspx.cs" Inherits="Ptransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style5
        {
         border-style: groove;
         border-width: 1px;
         font-family: Calibri;
         font-size: large;
         width: 195px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="height:auto ; width:1000px; margin-left:150px"  >
    
    <div style="height:50px; width:953px; margin-left:20px; margin-top:20px;" 
        class="style12">
        Welcome to Smart Transfer Fast Way to money Transfer&nbsp;</div>
    
    <div style="height:700px; width:953px; margin-left:20px; margin-top:50px;">

        <table style="width: 100%; height: 645px;">
            <tr>
                <td class="style5">
                    Transaction&nbsp; Id Number Is:</td>
                <td class="style13">
                    <asp:Label ID="Rid" runat="server" CssClass="textbox" Width="150px" 
                        Height="30px"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Enter Your EMCard No:</td>
                <td class="style13">
                    <asp:TextBox ID="cardno" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Enter Transfer Amount </td>
                <td class="style13">
                    <asp:TextBox ID="transferamount" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="style5">
                    Enter Transfer Account Number:</td>
                <td class="style13">
                    <asp:TextBox ID="tvcard" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="textbox" Font-Size="15pt" 
                        Height="45px" Text="Transfer Now" Width="224px" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11" colspan="2">
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

