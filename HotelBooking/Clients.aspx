<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="tamk.Clients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Clients</title>

</head>
<body>
    <form id="form1" runat="server">
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
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserName], [Name], [DateOfBirth], [Gender], [Address], [Email], [PhoneNumber] FROM [Login]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
