<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="tamk.Login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Login</title>
        <script>
    function Validate()
    {
        if ((document.getElementById('txtusername')) || (document.getElementById('txtpassword')))    {
     alert('UserName or Password can not be blank');
     return false;
    }
    else {
        return true;
    }
}
    </script>
</head>
<body>
    <form id="form1" class="signin" runat="server">
        <header class="header">
      <h3 class="header-left"><a href="/Home.aspx">tamk Hotel</a></h3>
      <nav class="header-right">
        <ul>
          <li><a href="/Login.aspx">Login</a></li>
          <li><a href="/Register.aspx">Register</a></li>
          <li><a href="/Book.aspx">Booking</a></li>
          <li><a href="/Clients.aspx">Clients</a></li>
        </ul>
      </nav>
   </header>
    <table>
        <tr><td>
        <asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label> </td><td>   
        <asp:TextBox ID="txtusername" runat="server" Width="100px"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label></td><td> 
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="100px"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Button ID="btn_login" runat="server" Text="Login" OnClientClick="Validate()" onclick="btn_login_Click"/></td></tr>
    </table>
        <asp:Label ID="Label4" runat="server" Text="You need enter Username and Password"></asp:Label>
    </form>
</body>
</html>
