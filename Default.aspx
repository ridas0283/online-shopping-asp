<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" Runat="Server">

    <div class="slideExpandUp">
        
        <table class="menutable">
            <tr>
                <td> </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ibMobiles" runat="server" ImageUrl="~/Page_Images/mobile.jpg" Width="100%" Height="50%" OnClick="ibMobiles_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ibLaptops" runat="server" ImageUrl="~/Page_Images/laptop.jpg" Width="100%" Height="80%" OnClick="ibLaptops_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ibCameras" runat="server" ImageUrl="~/Page_Images/camera.jpg" Width="100%" Height="50%" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ibTelevisions" runat="server" ImageUrl="~/Page_Images/television.jpg" Width="100%" Height="100%" />
                </td>
            </tr>
        </table>
        
    </div>
</asp:Content>

