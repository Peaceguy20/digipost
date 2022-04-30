<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewTP.aspx.cs" Inherits="ViewTP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="height: auto; width:1000px; margin-left:150px">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
         GridLines="None" Width="993px">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="TransferId" HeaderText="TransferId" 
                 SortExpression="TransferId" />
             <asp:BoundField DataField="IName" HeaderText="IName" SortExpression="IName" />
             <asp:BoundField DataField="ICardno" HeaderText="ICardno" 
                 SortExpression="ICardno" />
             <asp:BoundField DataField="Iamout" HeaderText="Iamout" 
                 SortExpression="Iamout" />
             <asp:BoundField DataField="TName" HeaderText="TName" SortExpression="TName" />
             <asp:BoundField DataField="TCardno" HeaderText="TCardno" 
                 SortExpression="TCardno" />
             <asp:BoundField DataField="Tamount" HeaderText="Tamount" 
                 SortExpression="Tamount" />
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
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:db %>" 
         SelectCommand="SELECT * FROM [TransferInfo]"></asp:SqlDataSource>
 </div>
</asp:Content>

