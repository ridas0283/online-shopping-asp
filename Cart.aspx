<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

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

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="P_Name" DataSourceID="DataSourceCart" HorizontalAlign="Center" CellPadding="40" CellSpacing="40" OnRowDeleted="GridView1_RowDeleted">
                        <Columns>
                            <asp:TemplateField SortExpression="Image">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="50px" Height="50px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="P_Name" HeaderText="Product" ReadOnly="True" SortExpression="P_Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="DataSourceCart" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT Product_Tb.Image, Product_Tb.P_Name, Product_Tb.Price FROM Product_Tb INNER JOIN Cart ON Product_Tb.P_Name = Cart.P_Name INNER JOIN User_Tb ON User_Tb.Email_Id = Cart.Email_Id"
                        DeleteCommand="DELETE FROM Cart WHERE P_Name=@P_Name">
                        
                    </asp:SqlDataSource>

                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
 
                    <asp:Label ID="lAmount" runat="server" CssClass="font"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            </table>

        <table class="menutable">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="bBuy" runat="server" CssClass="button" Text="BUY" OnClick="bBuy_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

