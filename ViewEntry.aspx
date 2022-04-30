<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewEntry.aspx.cs" Inherits="ViewT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #003366;
            font-size: large;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; width:1000px; margin-left:150px ;background-color:white">

        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong><span class="auto-style2">Available Account Balance</span></strong>:<strong><asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Label"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
         AutoGenerateColumns="False" CellPadding="4" 
         ForeColor="#333333" GridLines="None" Width="990px" DataSourceID="SqlDataSource1">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" SortExpression="AccountNo" />
             <asp:BoundField DataField="PaidDate" HeaderText="PaidDate" SortExpression="PaidDate" />
             <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
             <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
         </Columns>
         <EditRowStyle BackColor="#2461BF" />
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />
     </asp:GridView>
        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [AccountNo], [PaidDate], [Amount], [Status] FROM [ClientPostTransactionInfo] WHERE ([AccountNo] = @AccountNo)">
            <SelectParameters>
                <asp:SessionParameter Name="AccountNo" SessionField="ACNO" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        

 </div>
</asp:Content>

