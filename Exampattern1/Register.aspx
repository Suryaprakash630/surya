<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Exampattern1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblcon" runat="server" style="z-index: 1; left: 227px; top: 291px; position: absolute" Text="Confirm Password"></asp:Label>
    <asp:Label ID="lblgender" runat="server" style="z-index: 1; left: 232px; top: 342px; position: absolute" Text="Gender"></asp:Label>
    <asp:Label ID="lblblood" runat="server" style="z-index: 1; left: 242px; top: 540px; position: absolute" Text="Blood Group"></asp:Label>
    <asp:Label ID="lbllanguage" runat="server" style="z-index: 1; left: 235px; top: 390px; position: absolute" Text="Language"></asp:Label>
    <asp:Label ID="lblphno" runat="server" style="z-index: 1; left: 241px; top: 589px; position: absolute" Text="Phno"></asp:Label>
    <asp:Label ID="lblcity" runat="server" style="z-index: 1; left: 239px; top: 491px; position: absolute" Text="City"></asp:Label>
    <asp:Label ID="lblstate" runat="server" style="z-index: 1; left: 239px; top: 439px; position: absolute" Text="State"></asp:Label>
    <asp:Label ID="lblemail" runat="server" style="z-index: 1; left: 244px; top: 631px; position: absolute" Text="Email"></asp:Label>
    <asp:TextBox ID="txtpwd" runat="server" style="z-index: 1; left: 464px; top: 250px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="txtcon" runat="server" style="z-index: 1; left: 466px; top: 289px; position: absolute"></asp:TextBox>
    <asp:RadioButton ID="rbmale" runat="server" GroupName="gender" style="z-index: 1; left: 459px; top: 346px; position: absolute" Text="Male" />
    <asp:CheckBox ID="cktel" runat="server" style="z-index: 1; left: 468px; top: 396px; position: absolute" Text="Tel" />
    <asp:DropDownList ID="ddstate" runat="server" style="z-index: 1; left: 467px; top: 446px; position: absolute">
    </asp:DropDownList>
    <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 10px; top: 15px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="txtphno" runat="server" style="z-index: 1; left: 467px; top: 591px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="txtemail" runat="server" style="z-index: 1; left: 470px; top: 638px; position: absolute"></asp:TextBox>
    <asp:Button ID="btnregister" runat="server" style="z-index: 1; left: 309px; top: 691px; position: absolute" Text="Register" />
    <asp:Button ID="btnclear" runat="server" style="z-index: 1; left: 525px; top: 692px; position: absolute" Text="Clear" />
    <asp:DropDownList ID="ddcity" runat="server" style="z-index: 1; left: 472px; top: 495px; position: absolute">
    </asp:DropDownList>
    <asp:DropDownList ID="ddblood" runat="server" style="z-index: 1; left: 471px; top: 541px; position: absolute">
    </asp:DropDownList>
    <asp:CheckBox ID="ckhin" runat="server" style="z-index: 1; left: 545px; top: 397px; position: absolute" Text="Hin" />
    <asp:CheckBox ID="ckeng" runat="server" style="z-index: 1; left: 626px; top: 393px; position: absolute" Text="Eng" />
    <asp:RadioButton ID="rbfemale" runat="server" GroupName="gender" style="z-index: 1; left: 571px; top: 345px; position: absolute" Text="Female" />
    <asp:TextBox ID="txtuser" runat="server" style="z-index: 1; left: 463px; top: 206px; position: absolute"></asp:TextBox>
    <asp:Label ID="lblpwd" runat="server" style="z-index: 1; left: 227px; top: 252px; position: absolute" Text="Password"></asp:Label>
    <asp:Label ID="lbluser" runat="server" style="z-index: 1; left: 225px; top: 206px; position: absolute" Text="User Name"></asp:Label>
</asp:Content>
