<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="Login_role.Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Rooms</title>
    <link href="styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
    </style>
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
        <h3><asp:Label ID="Label10" runat="server"></asp:Label></h3>
        <p>Search by
            <asp:LinkButton ID="Available" runat="server" OnClick="Available_Click">Available</asp:LinkButton> 
            <asp:LinkButton ID="VIPRooms" runat="server" OnClick="VIPRooms_Click">    VIP Rooms</asp:LinkButton>
        </p>
      <table>
        <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="Need fill in full information"></asp:Label>
        <tr><td class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="Hotel ID:"></asp:Label></td><td class="auto-style1">
                <asp:DropDownList ID="HotelID" runat="server">
                    <asp:ListItem Value="1">Hotel 1</asp:ListItem>
                    <asp:ListItem Value="2">Hotel 2</asp:ListItem>
                    <asp:ListItem Value="3">Hotel 3</asp:ListItem>
                </asp:DropDownList>
         </td></tr>
        <tr><td>
        <asp:Label ID="Label2" runat="server" Text="Rooms:" ></asp:Label> </td><td>
        <asp:TextBox ID="RoomsID" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label11" runat="server" Text="Type of Room:" ></asp:Label> </td><td class="auto-style4">
                <asp:DropDownList ID="Type" runat="server">
                    <asp:ListItem>Standard</asp:ListItem>
                    <asp:ListItem>VIP</asp:ListItem>
                </asp:DropDownList>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label3" runat="server" Text="Beds:" ></asp:Label> </td><td class="auto-style4">
        <asp:TextBox ID="Beds" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label4" runat="server" Text="Floor:" ></asp:Label> </td><td>
        <asp:TextBox ID="Floor" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label5" runat="server" Text="Availability:" ></asp:Label> </td><td>
                <asp:RadioButtonList ID="availability" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label6" runat="server" Text="Price:" ></asp:Label> </td><td>
        <asp:TextBox ID="price" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label7" runat="server" Text="Check In:" ></asp:Label> </td><td>
                <asp:Calendar ID="CheckIn" runat="server"></asp:Calendar>
        </td></tr>
        <tr><td>
        <asp:Label ID="Label8" runat="server" Text="Check Out:" ></asp:Label> </td><td>
                <asp:Calendar ID="CheckOut" runat="server"></asp:Calendar>
        </td></tr>
        <tr><td>
        <asp:Button ID="btn_register" runat="server" Text="Book a Room" class="button" onclick="btn_register_Click" />
        </td></tr>
</table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="HotelID" HeaderText="HotelID" SortExpression="HotelID" />
                <asp:BoundField DataField="RoomsID" HeaderText="RoomsID" SortExpression="RoomsID" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Beds" HeaderText="Beds" SortExpression="Beds" />
                <asp:BoundField DataField="Floor" HeaderText="Floor" SortExpression="Floor" />
                <asp:BoundField DataField="availability" HeaderText="availability" SortExpression="availability" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="CheckIn" HeaderText="CheckIn" SortExpression="CheckIn" />
                <asp:BoundField DataField="CheckOut" HeaderText="CheckOut" SortExpression="CheckOut" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rooms] WHERE ([availability] = @availability)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Yes" Name="availability" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="AvailableGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" Visible="False">
            <Columns>
                <asp:BoundField DataField="HotelID" HeaderText="HotelID" SortExpression="HotelID" />
                <asp:BoundField DataField="RoomsID" HeaderText="RoomsID" SortExpression="RoomsID" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Beds" HeaderText="Beds" SortExpression="Beds" />
                <asp:BoundField DataField="Floor" HeaderText="Floor" SortExpression="Floor" />
                <asp:BoundField DataField="availability" HeaderText="availability" SortExpression="availability" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="CheckIn" HeaderText="CheckIn" SortExpression="CheckIn" />
                <asp:BoundField DataField="CheckOut" HeaderText="CheckOut" SortExpression="CheckOut" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="VIPGr" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableModelValidation="True" Visible="False">
            <Columns>
                <asp:BoundField DataField="HotelID" HeaderText="HotelID" SortExpression="HotelID" />
                <asp:BoundField DataField="RoomsID" HeaderText="RoomsID" SortExpression="RoomsID" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Beds" HeaderText="Beds" SortExpression="Beds" />
                <asp:BoundField DataField="Floor" HeaderText="Floor" SortExpression="Floor" />
                <asp:BoundField DataField="availability" HeaderText="availability" SortExpression="availability" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="CheckIn" HeaderText="CheckIn" SortExpression="CheckIn" />
                <asp:BoundField DataField="CheckOut" HeaderText="CheckOut" SortExpression="CheckOut" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rooms] WHERE ([Type] = @Type)">
            <SelectParameters>
                <asp:Parameter DefaultValue="VIP" Name="Type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>
     </body>
</html>
