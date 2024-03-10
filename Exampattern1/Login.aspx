<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Exampattern1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 541px; top: 346px; position: absolute"></asp:Label>
            <asp:Label ID="lbluser" runat="server" style="z-index: 1; left: 201px; top: 235px; position: absolute; bottom: 170px; width: 92px;" Text="User ID"></asp:Label>
            <asp:TextBox ID="txtuser" runat="server" style="z-index: 1; left: 413px; top: 227px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="txtpwd" runat="server" style="z-index: 1; left: 408px; top: 284px; position: absolute"></asp:TextBox>
            <asp:Label ID="lblpwd" runat="server" style="z-index: 1; left: 195px; top: 285px; position: absolute" Text="Password"></asp:Label>
            <asp:Button ID="btnlogin" runat="server" style="z-index: 1; left: 315px; top: 368px; position: absolute" Text="Login" />
        </div>
    </form>
</asp:Content>
