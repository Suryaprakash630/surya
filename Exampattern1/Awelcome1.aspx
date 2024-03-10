<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Awelcome1.aspx.cs" Inherits="Exampattern1.Awelcome1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/help.png" style="z-index: 1; left: 1028px; top: 116px; position: absolute; height: 207px; width: 261px" />
    <asp:Menu ID="Menu1" runat="server" Height="125px" Orientation="Horizontal" RenderingMode="Table" Width="850px" OnMenuItemClick="Menu1_MenuItemClick">
        <Items>
            <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
            <asp:MenuItem Text="Details" Value="Details" NavigateUrl="~/Details.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Search" Value="Search" NavigateUrl="~/Search1.aspx"></asp:MenuItem>
        </Items>
</asp:Menu>
</asp:Content>
