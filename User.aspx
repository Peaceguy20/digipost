<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

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
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="169px" 
                            ImageUrl="~/image/apply-now.png" Width="283px" 
                            PostBackUrl="~/AccountOpen.aspx" />
                    </td>
                    <td class="style5">
                        <asp:ImageButton ID="ImageButton5" runat="server" Height="167px" 
                            ImageUrl="~/image/recharge.png" Width="279px" 
                            PostBackUrl="~/DigiPostPassBook.aspx" />
                    </td>
                    <td class="style7">
                        <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderStyle="None" Font-Size="25pt" ForeColor="White" Height="167px" OnClick="Button1_Click" Text="Bank Transfer" Width="279px" />
                    </td>
                </tr>
                              
            </table>
    
</div>

</asp:Content>

