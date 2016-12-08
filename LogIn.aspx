<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" Runat="Server">




    <div class="pullDown">
        <table class="menutable">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr class="font">
                <td>
                    <asp:Label ID="lMessage" runat="server">Enter Your Email and Password</asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

        <table class="menutable">
            <tr>
                <td>
                    <asp:TextBox ID="tbEmail" placeholder="Email" runat="server" Width="50%" Height="40px" MaxLength="50" CssClass="input"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbPassword" placeholder="Password" runat="server" Width="50%" Height="40px" MaxLength="20" CssClass="input" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td>
                    <asp:Button ID="bLogIn" runat="server" CssClass="button" Text="Log In" OnClick="bLogIn_Click" />
                </td>
            </tr>
            
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr class="font" style="font-weight:normal; color: black">
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>


</asp:Content>

