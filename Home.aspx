<%@ Page Title="" Language="C#" MasterPageFile="~/Em.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        .style4
        {
        }
        .style5
        {
            height: 155px;
            width: 290px;
        }
        .style6
        {
            width: 290px;
        }
        .style7
        {
            height: 155px;
            width: 282px;
        }
        .style8
        {
            width: 282px;
        }
        .style9
        {
            width: 212px;
            height: 179px;
        }
        .style10
        {
            width: 290px;
            height: 179px;
        }
        .style11
        {
            width: 282px;
            height: 179px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto; width:auto">

 <table style="border-style: solid; border-width: 1px; padding: 1px 4px; width: 1000px; height: 494px; margin-left:150px;">
                <tr>
                    <td class="style3">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="167px" 
                            ImageUrl="~/image/money.png" Width="286px" PostBackUrl="~/User.aspx" />
                    </td>
                    <td class="style5">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="165px" 
                            ImageUrl="~/image/PAY.png" Width="287px" PostBackUrl="~/User.aspx" />
                    </td>
                    <td class="style7">
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="163px" 
                            ImageUrl="~/image/kd.png" Width="283px" PostBackUrl="~/User.aspx" />
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:ImageButton ID="ImageButton6" runat="server" Height="168px" 
                            ImageUrl="~/image/rechargeac.png" Width="284px" PostBackUrl="~/User.aspx" />
                    </td>
                    <td class="style10">
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="169px" 
                            ImageUrl="~/image/apply-now.png" Width="283px" 
                            PostBackUrl="~/Login.aspx" />
                    </td>
                    <td class="style11">
                        <asp:ImageButton ID="ImageButton5" runat="server" Height="167px" 
                            ImageUrl="~/image/recharge.png" Width="279px" PostBackUrl="~/User.aspx" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:ImageButton ID="ImageButton7" runat="server" Height="172px" 
                            ImageUrl="~/image/subscribe.png" Width="279px" 
                            PostBackUrl="~/Subscribe.aspx" />
                    </td>
                    <td class="style6">
                        <asp:ImageButton ID="ImageButton8" runat="server" Height="177px" 
                            ImageUrl="~/image/lost.png" Width="286px" PostBackUrl="~/User.aspx" />
                    </td>
                    <td class="style8">
                        <asp:ImageButton ID="ImageButton9" runat="server" Height="174px" 
                            ImageUrl="~/image/services.png" Width="278px" PostBackUrl="~/User.aspx" />
                    </td>
                </tr>
            </table>
    
</div>


</asp:Content>

