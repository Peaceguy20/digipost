<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="VPH.aspx.cs" Inherits="ViewT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; width:1000px; margin-left:150px">


     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
         AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" 
         ForeColor="#333333" GridLines="None" Width="990px">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="TransectionId" HeaderText="TransectionId" 
                 SortExpression="TransectionId" />
             <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
             <asp:BoundField DataField="PaymentTo" HeaderText="PaymentTo" 
                 SortExpression="PaymentTo" />
             <asp:BoundField DataField="PayByName" HeaderText="PayByName" SortExpression="PayByName" />
             <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
             <asp:BoundField DataField="BankName" HeaderText="BankName" 
                 SortExpression="BankName" />
             <asp:BoundField DataField="CardNo" HeaderText="CardNo" 
                 SortExpression="CardNo" />
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

