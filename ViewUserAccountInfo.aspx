<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewUserAccountInfo.aspx.cs" Inherits="ViewT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; width:1000px; margin-left:150px">


     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
         AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" 
         ForeColor="#333333" GridLines="None" Width="990px" DataKeyNames="RId">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="RId" HeaderText="RId" 
                 SortExpression="RId" InsertVisible="False" ReadOnly="True" />
             <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" SortExpression="AccountNo" />
             <asp:BoundField DataField="StartDate" HeaderText="StartDate" 
                 SortExpression="StartDate" />
             <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
             <asp:BoundField DataField="AccountType" HeaderText="AccountType" SortExpression="AccountType" />
             <asp:BoundField DataField="ClientName" HeaderText="ClientName" 
                 SortExpression="ClientName" />
             <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                 SortExpression="MobileNo" />
             <asp:BoundField DataField="IntrestRate" HeaderText="IntrestRate" SortExpression="IntrestRate" />
             <asp:BoundField DataField="BalanceAmount" HeaderText="BalanceAmount" SortExpression="BalanceAmount" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [AccountInfo] WHERE ([MobileNo] = @MobileNo)">
            <SelectParameters>
                <asp:SessionParameter Name="MobileNo" SessionField="Mno" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [TransectionInfo] WHERE ([MobileNo] = @MobileNo)">
            <SelectParameters>
                <asp:SessionParameter Name="MobileNo" SessionField="Mno" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:db %>" 
         SelectCommand="SELECT * FROM [TransectionInfo] WHERE ([Email] = @Email)">
         <SelectParameters>
             <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>


 </div>
</asp:Content>

