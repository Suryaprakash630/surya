<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Awelcome.aspx.cs" Inherits="Exampattern1.Awelcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<asp:HyperLink ID="hyphome" runat="server" style="z-index: 1; left: 201px; top: 256px; position: absolute" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
<asp:HyperLink ID="hypdetails" runat="server" style="z-index: 1; left: 381px; top: 258px; position: absolute" NavigateUrl="~/Deatials.aspx">Deatials</asp:HyperLink>
<asp:HyperLink ID="hypsearch" runat="server" style="z-index: 1; left: 583px; top: 260px; position: absolute" NavigateUrl="~/Search.aspx">Search</asp:HyperLink>
</asp:Content>
