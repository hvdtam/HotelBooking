<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="tamk.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/styles.css" rel="stylesheet" />
    <title>tamk Hotel Booking</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
    </div>
  </form>
    <div class="products">
        <div class="product"><a href="Login.aspx">
            <div class="image"><img src="/img/login.png" /></div>
            <div class="name">Login</div></a>
        </div>
        <div class="product"><a href="Register.aspx">
            <div class="image"><img src="/img/register.png" /></div>
            <div class="name">Register</div></a>
        </div>
        <div class="product"><a href="Book.aspx">
            <div class="image"><img src="/img/booking.png" /></div>
            <div class="name">Booking</div></a>
        </div>
        <div class="product"><a href="Clients.aspx">
            <div class="image"><img src="/img/clients.png" /></div>
            <div class="name">Clients</div></a>
        </div>
</div>
</body>
</html>
