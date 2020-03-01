<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="tamk.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="~/styles.css" rel="stylesheet" />
    <style type="text/css">
        body {
  height: 100%;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
}
    .signup
    {
      background: #fff;
      width: 500px;
      border-radius: 6px;
      border: #ff9800 2px solid; 
    }
        .auto-style1 {
            height: 24px;
        }
        .auto-style4 {
            width: 246px;
        }
        .auto-style5 {
            width: 246px;
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" class="signup" runat="server">
    <h2>Register </h2>
        <h3><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" ForeColor="red">Click here to Login</asp:HyperLink></h3>
        <h3><asp:Label ID="noti" runat="server"></asp:Label></h3>
    <table>
        <tr><td>
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label> </td><td class="auto-style4">
        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter UserName" ControlToValidate="UserName"></asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label2" runat="server" Text="Password:" ></asp:Label> </td><td class="auto-style4">
        <asp:TextBox ID="Password"  TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password" ControlToValidate="Password"></asp:RequiredFieldValidator>
        </td></tr>
        <tr><td class="auto-style1">
        <asp:Label ID="Label3" runat="server" Text="Name:" ></asp:Label> </td><td class="auto-style5">
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label4" runat="server" Text="Date Of Birth:" ></asp:Label> </td><td class="auto-style4">
        <asp:TextBox ID="DateOfBirth" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td class="auto-style1">
        <asp:Label ID="Label5" runat="server" Text="Gender:" ></asp:Label> </td><td class="auto-style4">
                <asp:RadioButtonList ID="Gender" runat="server">
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                </asp:RadioButtonList>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label6" runat="server" Text="Address:" ></asp:Label> </td><td class="auto-style4">
        <asp:TextBox ID="Address" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label7" runat="server" Text="Email:" ></asp:Label> </td><td class="auto-style4">
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label8" runat="server" Text="Phone Number:" ></asp:Label> </td><td class="auto-style4">
        <asp:TextBox ID="Phonenumber" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Button ID="btn_register" runat="server" Text="Register" class="button" onclick="btn_register_Click" />
        </td></tr>
</table>
</form>
</body>
</html>
