<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="Add_Item.aspx.cs" Inherits="Add_Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
  
  
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminTools" Runat="Server">
    <div class="bigEntrance">
        <table class="menutable">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="font">
                    <asp:Label ID="lMessage" runat="server">Enter Product Details</asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

        <table class="menutable">
            <tr>
                <td>
                    <asp:TextBox ID="tbName" runat="server" Width="50%" Height="40px" placeholder="Product Name" MaxLength="50" CssClass="input"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbPrice" runat="server" Width="50%" Height="40px" placeholder="Price" MaxLength="10" CssClass="input"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" Width="50%" Height="40px" CssClass="input">
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Camera</asp:ListItem>
                        <asp:ListItem>Television</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="fuImage" Width="50%" Height="40px" runat="server" CssClass="input" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbDetails" runat="server" Width="50%" Height="70px" placeholder="Product Details" MaxLength="200" TextMode="MultiLine" CssClass="input"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="bAdd" runat="server" CssClass="button" Text="Add" OnClick="bAdd_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
    
   

    
</asp:Content>

