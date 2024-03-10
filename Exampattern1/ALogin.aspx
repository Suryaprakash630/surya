<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="ALogin.aspx.cs" Inherits="Exampattern1.ALogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbluser" runat="server" style="z-index: 1; left: 213px; top: 305px; position: absolute" Text="User ID"></asp:Label>
<asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 208px; top: 431px; position: absolute"></asp:Label>
<asp:TextBox ID="txtuser" runat="server" style="z-index: 1; left: 396px; top: 300px; position: absolute"></asp:TextBox>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/login..png" style="z-index: 1; left: 297px; top: 133px; position: absolute; height: 128px; width: 152px" />
<asp:TextBox ID="txtpwd" runat="server" style="z-index: 1; left: 393px; top: 355px; position: absolute"></asp:TextBox>
<asp:Button ID="lblLogin" runat="server" style="z-index: 1; left: 318px; top: 393px; position: absolute" Text="Login" OnClick="lblLogin_Click" />
<asp:Label ID="lblpwd" runat="server" style="z-index: 1; left: 211px; top: 350px; position: absolute" Text="Password"></asp:Label>
</asp:Content>
