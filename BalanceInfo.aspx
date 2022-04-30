<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="BalanceInfo.aspx.cs" Inherits="BalanceInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:auto ; width:1000px; margin-left:150px"  >
    
    <div style="height: auto; width:953px; margin-left:20px; margin-top:20px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" Width="929px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="EMcardno" HeaderText="EMcardno" 
                    SortExpression="EMcardno" />
                <asp:BoundField DataField="ValidFrom" HeaderText="ValidFrom" 
                    SortExpression="ValidFrom" />
                <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" 
                    SortExpression="ExpiryDate" />
                <asp:BoundField DataField="CardType" HeaderText="CardType" 
                    SortExpression="CardType" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="CardStatus" HeaderText="CardStatus" 
                    SortExpression="CardStatus" />
                <asp:BoundField DataField="BalanceAmount" HeaderText="BalanceAmount" 
                    SortExpression="BalanceAmount" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db %>" 
            
            SelectCommand="SELECT [EMcardno], [ValidFrom], [ExpiryDate], [CardType], [Name], [CardStatus], [BalanceAmount] FROM [EMCardInfo] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>



    </div>
</asp:Content>

