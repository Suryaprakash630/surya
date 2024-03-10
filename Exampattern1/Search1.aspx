<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Search1.aspx.cs" Inherits="Exampattern1.Search1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblblood" runat="server" style="z-index: 1; left: 200px; top: 171px; position: absolute" Text="Blood Group"></asp:Label>
<asp:DropDownList ID="ddblood" runat="server" style="z-index: 1; left: 407px; top: 164px; position: absolute" AutoPostBack="True" OnSelectedIndexChanged="ddblood_SelectedIndexChanged">
</asp:DropDownList>
<asp:DropDownList ID="ddstate" runat="server" style="z-index: 1; left: 410px; top: 222px; position: absolute; height: 29px;" AutoPostBack="True" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
</asp:DropDownList>
<asp:Button ID="btnsearch" runat="server" style="z-index: 1; left: 326px; top: 327px; position: absolute" Text="Search" OnClick="btnsearch_Click" />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 197px; top: 376px; position: absolute; height: 175px; width: 289px">
    <Columns>
        <asp:TemplateField HeaderText="uid">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("uid") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("uid") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="uname">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("uname") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("uname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="BloodGroup">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Bgroup") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Bgroup") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="phno">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("phno") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("phno") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="city">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("city") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
    <asp:DropDownList ID="ddcity" runat="server" style="z-index: 1; left: 410px; top: 276px; position: absolute">
    </asp:DropDownList>
<asp:Label ID="lblstate" runat="server" style="z-index: 1; left: 200px; top: 227px; position: absolute" Text="State"></asp:Label>
<asp:Label ID="lblcity" runat="server" style="z-index: 1; left: 203px; top: 271px; position: absolute" Text="City"></asp:Label>
</asp:Content>
