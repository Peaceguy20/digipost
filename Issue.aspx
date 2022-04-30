<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Issue.aspx.cs" Inherits="Issue" %>

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
        .style15
        {
            height: 50px;
            width: 217px;
            font-family: Calibri;
            font-size: large;
            border-style: groove;
            border-width: 1px;
        }
        .style16
        {
            border-style: groove;
            border-width: 1px;
            height: 50px;
        }
        .style17
        {
            height: 50px;
        }
        .style18
        {
            height: 41px;
            width: 217px;
            font-family: Calibri;
            font-size: large;
            border-style: groove;
            border-width: 1px;
        }
        .style19
        {
            border-style: groove;
            border-width: 1px;
            height: 41px;
        }
        .style20
        {
            height: 41px;
        }
        .style21
        {
            height: 45px;
            width: 217px;
            font-family: Calibri;
            font-size: large;
            border-style: groove;
            border-width: 1px;
        }
        .style22
        {
            border-style: groove;
            border-width: 1px;
            height: 45px;
        }
        .style23
        {
            height: 45px;
        }
        .style24
        {
            height: 61px;
            width: 217px;
            font-family: Calibri;
            font-size: large;
            border-style: groove;
            border-width: 1px;
        }
        .style25
        {
            border-style: groove;
            border-width: 1px;
            height: 61px;
        }
        .style26
        {
            height: 61px;
        }
        .style27
        {
            height: 42px;
            width: 217px;
            font-family: Calibri;
            font-size: large;
            border-style: groove;
            border-width: 1px;
        }
        .style28
        {
            border-style: groove;
            border-width: 1px;
            height: 42px;
        }
        .style29
        {
            height: 42px;
        }
        .style30
        {
            height: 56px;
            width: 217px;
            font-family: Calibri;
            font-size: large;
            border-style: groove;
            border-width: 1px;
        }
        .style31
        {
            border-style: groove;
            border-width: 1px;
            height: 56px;
        }
        .style32
        {
            height: 56px;
        }
        .style33
        {
            height: 85px;
        }
        .style34
        {
            width: 282px;
            height: 49px;
        }
        .style35
        {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:  auto; width:1000px; margin-left:150px" >
 <div style="height:50px; width:953px;  margin-top:20px; text-align: center; font-size: xx-large; color: #3333FF;" >
      
        Issue New&nbsp; EM Card</div>
    
    <div style="height: 1070px; width:953px; margin-left:20px; margin-top:50px;">

        <table style="width: 100%; height: 1022px;">
            <tr>
                <td class="style15">
                    View Request Id Number Is:</td>
                <td class="style16" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="RequestId" 
                        DataValueField="RequestId" Height="40px" Width="170px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db %>" 
                        SelectCommand="SELECT [RequestId] FROM [RequestNewCard] WHERE ([Status] = @Status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Issued" Name="Status" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Button ID="Button2" runat="server" Text="Find" onclick="Button2_Click" />
                </td>
                <td class="style17">
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;FullName:</td>
                <td class="style19" colspan="2">
                    <asp:TextBox ID="fname" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="style20">
                    </td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;Email Address</td>
                <td class="style22" colspan="2">
                    <asp:TextBox ID="email" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="style23">
                    </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;FullAddress:</td>
                <td class="style25" colspan="2">
                    <asp:TextBox ID="fulladdress" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="style26">
                    </td>
            </tr>
            <tr>
                <td class="style27">
                    Enter City:</td>
                <td class="style28" colspan="2">
                    <asp:TextBox ID="city" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="style29">
                    </td>
            </tr>
            <tr>
                <td class="style30">
                    Contact Number:</td>
                <td class="style31" colspan="2">
                    <asp:TextBox ID="cn" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="style32">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    Card Number:</td>
                <td class="style7" colspan="3">
                    <asp:TextBox ID="cardn" runat="server" CssClass="textbox" Height="23px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    Card Type:</td>
                <td class="style8">
                    <asp:DropDownList ID="ctype" runat="server" AutoPostBack="True" 
                        CssClass="textbox" Height="30px" Width="137px">
                        <asp:ListItem>Gold</asp:ListItem>
                        <asp:ListItem>Silver</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
             <tr>
                <td class="style3">
                    ValidFrom:</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
             <tr>
                <td class="style3">
                    Expiry Date:</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
             <tr>
                <td class="style3">
                    Amount:</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" ReadOnly="True">0</asp:TextBox>
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td colspan="3" class="style33">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="textbox" Font-Size="15pt" 
                        Height="45px" Text="Issue Card" Width="224px" onclick="Button1_Click" />
                </td>
                <td class="style33">
                    </td>
            </tr>
            <tr>
                <td class="style34" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl" runat="server" Font-Size="Large" ForeColor="#3333CC" 
                        Width="800px"></asp:Label>
                </td>
                <td class="style35">
                    </td>
            </tr>
        </table>

    </div>
  </div>
</asp:Content>

