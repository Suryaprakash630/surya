<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Exampattern1.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/hands.png" style="z-index: 1; left: 13px; top: 122px; position: absolute; height: 502px; width: 1588px" />

    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 371px; top: 257px; position: absolute; height: 175px; width: 289px" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:TemplateField HeaderText="Edit" ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="cmdedit" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="edit" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="cmddelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirm ('Do want delete')" Text="delete" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="uid">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("uid") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("uid") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="uname">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("uname") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("uname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="BloodGroup">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Bgroup") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Bgroup") %>'></asp:Label>
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
</asp:Content>
