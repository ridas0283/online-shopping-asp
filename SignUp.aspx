<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" Runat="Server">

    <div class="pullDown">  
      <table class="menutable">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr class="font">
                <td><asp:Label ID="lMessage" runat="server" CssClass="font" >Enter Your Details</asp:Label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

        <table class="menutable">
            <tr>
                <td>
                    <asp:TextBox ID="tbEmailId" runat="server" placeholder="Email" Width="50%" Height="40px" MaxLength="50" CssClass="input"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbName" placeholder="Name" runat="server" Width="50%" Height="40px" MaxLength="50" CssClass="input"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server" placeholder="Password" Width="50%" Height="40px" MaxLength="50" CssClass="input" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbReEnterPassword" runat="server" placeholder="Re Enter Password" Width="50%" Height="40px" MaxLength="50" CssClass="input" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbPhoneNo" runat="server" placeholder="Phone Number" Width="50%" Height="40px" MaxLength="50" CssClass="input"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbDob" runat="server" placeholder="Date of Birth" Width="50%" Height="40px" MaxLength="50" CssClass="input" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                    <asp:DropDownList ID="ddlGender" runat="server" Width="50%" Height="40px" CssClass="input">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbAddress" runat="server" placeholder="Address" Width="50%" Height="70px" MaxLength="80" CssClass="input" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="bSignUp" runat="server" CssClass="button" Text="Sign Up" OnClick="bSignUp_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                </td>
            </tr>
        </table>

    </div>

</asp:Content>

