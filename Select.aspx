<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Select.aspx.cs" Inherits="Select" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div style="height:200px; width:1000px; margin-left:150px">



      <table style="width: 100%; height: 200px;">
          <tr>
              <td>
                  <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" 
                      ImageUrl="~/image/m.png" PostBackUrl="~/MobilePay.aspx" Width="500px" />
              </td>
              <td>
                  <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" 
                      ImageUrl="~/image/d.png" PostBackUrl="~/DTHPay.aspx" Width="500px" />
              </td>
          </tr>
      </table>



  </div>
</asp:Content>

