<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Exampattern1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/hands.png" style="z-index: 1; left: 1052px; top: 121px; position: absolute; height: 230px; width: 225px" />
    <asp:Menu ID="Menu1" runat="server" Height="114px" Orientation="Horizontal" RenderingMode="Table" Width="1092px">
        <Items>
            <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Home.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Register" Value="Register" NavigateUrl="~/Register1.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Login" Value="Login">
                <asp:MenuItem Text="Admin" Value="Admin" NavigateUrl="~/ALogin.aspx"></asp:MenuItem>
                <asp:MenuItem Text="User" Value="User" NavigateUrl="~/ULogin.aspx"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Search" Value="Search" NavigateUrl="~/Search1.aspx"></asp:MenuItem>
        </Items>
</asp:Menu>
</asp:Content>
