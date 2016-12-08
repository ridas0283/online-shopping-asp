<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" Runat="Server">



    <div>
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="itemsList" runat="server" style="text-align:center" CssClass="slideUp" CellPadding="20" CellSpacing="20" DataKeyField="P_Name" DataSourceID="SqlDataSource1" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" Width="80%">
                        <ItemTemplate>
                            &nbsp;<asp:ImageButton ID="ibImage" Width="250px" PostBackUrl='<%# "~/Details.aspx?q="+Eval("Image") %>' runat="server" CssClass="image" ImageUrl='<%# Eval("Image") %>' />
                            <br />
                            <asp:Button ID="bName" runat="server" CssClass="labelButton" PostBackUrl='<%# "~/Details.aspx?q="+Eval("P_Name") %>' Text='<%# Eval("P_Name") %>' />
                            <br />
                            <asp:Label ID="lRs" runat="server" CssClass="price" Text="Rs."></asp:Label>
                            <asp:Label ID="lPrice" runat="server" CssClass="price" Text='<%# Eval("Price") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [P_Name], [Image], [Price] FROM [Product_Tb] WHERE ([P_Name] LIKE '%' + @q + '%') OR ([Category] = @q) OR ([P_Details] LIKE '%' + @q + '%')">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="q" QueryStringField="q" Type="String" />
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

