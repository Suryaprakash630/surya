<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="ULogin.aspx.cs" Inherits="Exampattern1.ULogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 299px; top: 576px; position: absolute"></asp:Label>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/login..png" style="z-index: 1; left: 391px; top: 184px; position: absolute; height: 193px; width: 164px" />
    <asp:Label ID="lbluser" runat="server" style="z-index: 1; left: 279px; top: 413px; position: absolute" Text="User Name"></asp:Label>
    <asp:TextBox ID="txtuser" runat="server" style="z-index: 1; left: 484px; top: 414px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="txtpwd" runat="server" style="z-index: 1; left: 480px; top: 474px; position: absolute"></asp:TextBox>
    <asp:Button ID="btnlogin" runat="server" style="z-index: 1; left: 436px; top: 544px; position: absolute" Text="Login" OnClick="btnlogin_Click" />
    <asp:Label ID="lblpwd" runat="server" style="z-index: 1; left: 276px; top: 475px; position: absolute" Text="Password"></asp:Label>
</asp:Content>
