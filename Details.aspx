<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" Runat="Server">
    <div class="slideDown">

        <table class="menutable">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Image ID="Image" runat="server" CssClass="bigImage" Width="350px"/>
                </td>
                <td style="text-align:left;">
                    <asp:Label ID="lName" runat="server" CssClass="productDetails" style="font-weight:bold;" Width="300px"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lDetails" runat="server" CssClass="productDetails" Width="300px"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="bAddToCart" runat="server" Text="Add To Cart" CssClass="menubutton" OnClick="bAddToCart_Click" />
                </td>
            </tr>
            </table>

        <table class="menutable">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="font">
                    <asp:Label ID="lMessage" runat="server" style="color:green"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

