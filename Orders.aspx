<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" Runat="Server">
    <div class="slideDown">
        <table class="menutable">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" CssClass="font" Text="Your Orders"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="P_Name" DataSourceID="SqlDataSource1" HorizontalAlign="Center" CellPadding="20" CellSpacing="15">
                        <Columns>
                            <asp:BoundField DataField="P_Name" HeaderText="Product" ReadOnly="True" SortExpression="P_Name" />
                            <asp:BoundField DataField="Purchase_DateTime" HeaderText="Order Date" />
                            <asp:BoundField DataField="Delivery_Date" HeaderText="Expected Delivery Date" SortExpression="Delivery_Date" />
                            <asp:BoundField DataField="Delivery_Status" HeaderText="Delivery Status" SortExpression="Delivery_Status" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product_Purchase.P_Name, Purchase.Purchase_DateTime, Purchase.Delivery_Date, Purchase.Delivery_Status FROM Product_Purchase, Purchase WHERE (Purchase.Email_Id = @Email_Id) and (Product_Purchase.Purchase_No = Purchase.Purchase_No)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Email_Id" SessionField="id" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

