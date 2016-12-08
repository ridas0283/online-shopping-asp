<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminTools" Runat="Server">
    <table class="menutable">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lMessage" runat="server" CssClass="font" Text="Select a Row and Click Dispatch to Dispatch the item(s)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="5" DataKeyNames="Purchase_No" DataSourceID="SqlDataSource1" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Purchase_No" HeaderText="Purchase_No" ReadOnly="True" SortExpression="Purchase_No" />
                        <asp:BoundField DataField="Email_ID" HeaderText="Email ID" SortExpression="Email_ID" />
                        <asp:BoundField DataField="Purchase_DateTime" HeaderText="Purchase Date" SortExpression="Purchase_DateTime" />
                        <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery Date" SortExpression="Delivery_Date" />
                        <asp:BoundField DataField="Payment_Mode" HeaderText="Payment Mode" SortExpression="Payment_Mode" />
                        <asp:BoundField DataField="Delivery_Status" HeaderText="Delivery Status" SortExpression="Delivery_Status" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Purchase]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="bDispatch" runat="server" Text="Dispatch" CssClass="button" OnClick="bDispatch_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

