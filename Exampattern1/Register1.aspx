<%@ Page Title="" Language="C#" MasterPageFile="~/Blood.Master" AutoEventWireup="true" CodeBehind="Register1.aspx.cs" Inherits="Exampattern1.Register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>
      
      <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/help.png" style="z-index: 1; left: 13px; top: 122px; position: absolute; height: 833px; width: 1571px" />
      
  </div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd" ErrorMessage="*Password is Required" style="z-index: 1; left: 795px; top: 220px; position: absolute; bottom: 182px" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphno" ErrorMessage="*Phno is Required" style="z-index: 1; left: 785px; top: 559px; position: absolute" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="*Email is Required" style="z-index: 1; left: 794px; top: 616px; position: absolute" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphno" ErrorMessage="*Invalid Phno" style="z-index: 1; left: 756px; top: 562px; position: absolute" ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="*Invalid email" style="z-index: 1; left: 761px; top: 612px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpwd" ErrorMessage="**First letter capital&amp;use one symbol" style="z-index: 1; left: 782px; top: 232px; position: absolute" ValidationExpression="[A-Z]{1}[a-z]{4}[!@#$%]{1}[0-9]{3}"></asp:RegularExpressionValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="**First Letter Capital" style="z-index: 1; left: 766px; top: 188px; position: absolute" ValidationExpression="[A-Za-z]{10}" ControlToValidate="txtuser"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuser" ErrorMessage="*User Name is Required" style="z-index: 1; left: 790px; top: 174px; position: absolute" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx" style="z-index: 1; left: 986px; top: 129px; position: absolute">Home</asp:HyperLink>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logout.aspx" style="z-index: 1; left: 1063px; top: 129px; position: absolute">Logout</asp:HyperLink>
    <asp:Label ID="lblcon" runat="server" style="z-index: 1; left: 298px; top: 269px; position: absolute" Text="Confirm Password"></asp:Label>
<asp:Label ID="lblcity" runat="server" style="z-index: 1; left: 304px; top: 460px; position: absolute" Text="City"></asp:Label>
<asp:Label ID="lblemail" runat="server" style="z-index: 1; left: 306px; top: 597px; position: absolute" Text="Email"></asp:Label>
<asp:TextBox ID="txtcon" runat="server" style="z-index: 1; left: 544px; top: 273px; position: absolute"></asp:TextBox>
<asp:RadioButton ID="rbmale" runat="server" GroupName="gender" style="z-index: 1; left: 547px; top: 334px; position: absolute" Text="Male" />
<asp:RadioButton ID="rbfemale" runat="server" GroupName="gender" style="z-index: 1; left: 643px; top: 331px; position: absolute" Text="Female" />
<asp:CheckBox ID="ckeng" runat="server" style="z-index: 1; left: 680px; top: 376px; position: absolute" Text="Eng" />
<asp:CheckBox ID="ckhin" runat="server" style="z-index: 1; left: 606px; top: 376px; position: absolute" Text="Hin" />
<asp:CheckBox ID="cktel" runat="server" style="z-index: 1; left: 539px; top: 375px; position: absolute" Text="Tel" />
<asp:DropDownList ID="ddcity" runat="server" style="z-index: 1; left: 549px; top: 462px; position: absolute" AutoPostBack="True">
</asp:DropDownList>
    <asp:DropDownList ID="ddblood" runat="server" style="z-index: 1; left: 549px; top: 514px; position: absolute" OnSelectedIndexChanged="ddblood_SelectedIndexChanged">
    </asp:DropDownList>
<asp:DropDownList ID="ddstate" runat="server" style="z-index: 1; left: 547px; top: 418px; position: absolute; height: 29px;" AutoPostBack="True" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
</asp:DropDownList>
<asp:TextBox ID="txtpwd" runat="server" style="z-index: 1; left: 542px; top: 221px; position: absolute"></asp:TextBox>
<asp:TextBox ID="txtuser" runat="server" style="z-index: 1; left: 544px; top: 173px; position: absolute"></asp:TextBox>
<asp:Label ID="phno" runat="server" style="z-index: 1; left: 309px; top: 552px; position: absolute" Text="Phno"></asp:Label>
<asp:TextBox ID="txtemail" runat="server" style="z-index: 1; left: 547px; top: 602px; position: absolute"></asp:TextBox>
<asp:Button ID="btnreg" runat="server" style="z-index: 1; left: 402px; top: 666px; position: absolute" Text="Register" OnClientClick="return confirm ('Do want Register')" OnClick="btnreg_Click" />
<asp:Button ID="btnclear" runat="server" style="z-index: 1; left: 586px; top: 669px; position: absolute" Text="Clear" OnClientClick="return confirm ('Do want clear')" OnClick="btnclear_Click" />
<asp:TextBox ID="txtphno" runat="server" style="z-index: 1; left: 545px; top: 557px; position: absolute"></asp:TextBox>
<asp:Label ID="lblblood" runat="server" style="z-index: 1; left: 296px; top: 515px; position: absolute" Text="Blood Group"></asp:Label>
<asp:Label ID="lblstate" runat="server" style="z-index: 1; left: 304px; top: 410px; position: absolute" Text="State"></asp:Label>
<asp:Label ID="lbllanguage" runat="server" style="z-index: 1; left: 303px; top: 370px; position: absolute" Text="Language"></asp:Label>
<asp:Label ID="lblpwd" runat="server" style="z-index: 1; left: 294px; top: 217px; position: absolute" Text="Password"></asp:Label>
<asp:Label ID="Label6" runat="server" style="z-index: 1; left: 302px; top: 327px; position: absolute" Text="Gender"></asp:Label>
<asp:Label ID="lbluser" runat="server" style="z-index: 1; left: 288px; top: 167px; position: absolute; right: 1014px; height: 35px;" Text="User Name"></asp:Label>
    <asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 265px; top: 721px; position: absolute"></asp:Label>
    </asp:Content>
