<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Uwelcome.aspx.cs" Inherits="Exampattern1.Uwelcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/hh.png" style="z-index: 1; left: 1016px; top: 117px; position: absolute; height: 150px; width: 227px" />
    <asp:Menu ID="Menu1" runat="server" Height="111px" Orientation="Horizontal" RenderingMode="Table" Width="797px">
        <Items>
            <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Update.aspx" Text="Update" Value="Update"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Search1.aspx" Text="Search" Value="Search"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
