<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Deatials.aspx.cs" Inherits="Exampattern1.Deatials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 240px; top: 205px; position: absolute; height: 180px; width: 289px">
    <Columns>
        <asp:BoundField DataField="uid" HeaderText="uid" />
        <asp:BoundField DataField="uname" HeaderText="uname" />
        <asp:BoundField DataField="bloodgroup" HeaderText="BloodGroup" />
        <asp:BoundField DataField="phno" HeaderText="phno" />
        <asp:BoundField DataField="email" HeaderText="Email" />
        <asp:BoundField DataField="city" HeaderText="City" />
    </Columns>
</asp:GridView>
</asp:Content>
