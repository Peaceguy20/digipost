 <%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="BankTransfer.aspx.cs" Inherits="confirmenquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
     <link href="css/Default1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style9
    {
        text-align: left;
            font-family: "Arial Narrow";
            font-size: medium;
            font-weight: normal;
        }
        .style12
        {
            width: 5px;
        }
        .text
        {}
        .style139
        {
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style140
        {
            width: 387px;
        }
        .style141
        {
            font-size: x-large;
        }
        .style142
        {
            outline: none;
            border: 1px solid #d9d5d6;
            box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.075) inset;
            font-family: Calibri;
            font-size: large;
            color: #646564;
            padding: 3px;
        }
        .style144
        {
            font-size: large;
        }
        .style145
        {
            width: 387px;
            font-size: medium;
        }
        .style146
        {
            font-size: medium;
        }
        .style147
        {
            outline: none;
            border: 1px solid #d9d5d6;
            box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.075) inset;
            font-family: Calibri;
            font-size: medium;
            color: #646564;
            padding: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div style="height: auto; width:1050px;  background-color: White; margin-left:150px" >
   
                   
    
      

           <table width="100%" border="0" cellspacing="0" cellpadding="0" >
               
        <tr>
            <th scope="row">
                &nbsp;
            </th>
            <td align="left" valign="middle">
                <table width="60%" style= "margin-top:30px"  width="332" border="0" align="center" cellpadding="0" cellspacing="0" style="border: 1px solid #e4dfdf;">
                    <tr>
                        <th width="30" rowspan="11" scope="row">
                            &nbsp;
                        </th>
                        <td style="padding-top: 10px; padding-bottom: 8x;" colspan="2">
                            <table width="100%" height="32" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th height="32" align="left" valign="middle" scope="col" class="style144">
                                        Payment Transfer To</th>
                                    <th scope="col" class="style144">
                                        &nbsp;
                                    </th>
                                </tr>
                            </table>
                        </td>
                        <td width="30" rowspan="11">
                            &nbsp;
                        </td>
                    </tr>
                    <span class="style141"><span class="style144">
                    <tr class="style146">
                        <td style="padding-top: 10px;" class="style140">
                      
                            Payment Transfer To:</td>
                        <td style="padding-top: 10px;">
                      
                            <asp:Label ID="Cname" runat="server" 
                               ></asp:Label>
                      
                        </td>
                    </tr>
                    <tr class="style146">
                        <td style="padding-top: 10px;" class="style140">
                      
                            Transaction Id:</td>
                        <td style="padding-top: 10px;">
                      
                            <span class="style141"><span class="style144">
                            <asp:Label ID="Tid" runat="server"></asp:Label>
                            </span></span></td>
                    </tr>
                    <tr class="style146">
                        <td style="padding-top: 10px;" class="style140">
                      
                            Payer Name:</td>
                        <td style="padding-top: 10px;">
                      
                            <asp:Label ID="name" runat="server"></asp:Label>
                        </td>
                    </tr>
                  
                    <tr class="style146">
                        <td style="padding-top: 10px;" class="style140">
                      
                            Payer MobileNo</td>
                        <td style="padding-top: 10px;">
                      
                    <span class="style141"><span class="style144">
                      
                            <asp:Label ID="mno" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 10px; text-align: left;" class="style145">
                      
                            Select Card Type</span></span></td>
                        <td style="padding-top: 10px;">
                      
                            <asp:DropDownList ID="cardtype" runat="server" AutoPostBack="True" 
                                CssClass="style147" Font-Size="12pt" Height="45px" Width="282px">
                                <asp:ListItem>Online NEFT Transfer</asp:ListItem>
                            </asp:DropDownList>
                      
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 10px;" class="style145">
                      
                            Select Bank Name:</td>
                        <td style="padding-top: 10px;">
                      
                            <asp:DropDownList ID="bankname" runat="server" AutoPostBack="True" 
                                CssClass="style147" Font-Size="12pt" Height="45px" Width="282px">
                                <asp:ListItem>STATE BANK OF INDIA</asp:ListItem>
                                <asp:ListItem>BANK OF BARODA</asp:ListItem>
                                <asp:ListItem>ICICI</asp:ListItem>
                                <asp:ListItem>HDFC</asp:ListItem>
                                <asp:ListItem>AXIS</asp:ListItem>
                            </asp:DropDownList>
                      
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 10px;" class="style145">
                      
                            Enter Account Number:</td>
                        <td style="padding-top: 10px;">
                      
                            <asp:TextBox ID="cardno" runat="server" CssClass="style147" Font-Size="12pt" 
                                Width="276px" MaxLength="16"></asp:TextBox>
                        </td>
                    </tr>
                    <span class="style141"><span class="style144">
                    <tr class="style146">
                        <td style="padding-top: 10px;" class="style140">
                      
                            &nbsp;Amount :</td>
                        <td style="padding-top: 10px;" colspan="2">
                      
                    <span class="style141"><span class="style144">
                      
                            <asp:TextBox ID="amount" runat="server" CssClass="style147" Font-Size="12pt" 
                                Width="276px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 10px;" class="style140">
                      
                            &nbsp;</td>
                        </span></span>
                        <td style="padding-top: 10px;">
                      
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <th height="30" colspan="3" scope="row">
                            <asp:Button ID="btnLogin" runat="server" s Text="Transfer Amount To Bank Account" 
                                            BackColor="#0000CC" BorderStyle="None" Font-Size="12pt" ForeColor="White" 
                                            Height="40px" onclick="btnLogin_Click" Width="258px" />
                        </th>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <th colspan="3" scope="row">
                &nbsp;
            </th>
        </tr>
    </table>
   
   
   
   
   
   
   
    <script type="text/javascript">
        function ShowPopup(message) {
            $(function () {
                $("#dialog").html(message);
                $("#dialog").dialog({
                    title: "Sahajanand Laser Technology",
                    buttons: {
                        Close: function () {
                            window.location.href ="UserHome.aspx"; 
                        }
                    },
                    modal: true
                });
            });
        };
    </script>
    <div id="dialog" style="display: none">
    </div>
   
    </div>
  





 
         
         
     
</asp:Content>

