using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace Login_role
{
    public partial class Book : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlCommand com;
        protected void btn_register_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strConnString);
            com = new SqlCommand();
            com.Connection = conn;
            com.CommandType = CommandType.Text;
            com.CommandText = "Insert into Rooms values(@HotelID,@RoomsID,@Type,@Beds,@Floor,@Availability,@Price,@CheckIn,@CheckOut)";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@HotelID", HotelID.SelectedValue);
            com.Parameters.AddWithValue("@RoomsID", RoomsID.Text);
            com.Parameters.AddWithValue("@Type", Type.SelectedValue);
            com.Parameters.AddWithValue("@Beds", Beds.Text);
            com.Parameters.AddWithValue("@Floor", Floor.Text);
            com.Parameters.AddWithValue("@Availability", availability.SelectedValue);
            com.Parameters.AddWithValue("@Price", price.Text);
            com.Parameters.AddWithValue("@CheckIn", CheckIn.SelectedDate);
            com.Parameters.AddWithValue("@CheckOut", CheckOut.SelectedDate);
            if (conn.State == ConnectionState.Closed)
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/Book.aspx");
            Label9.Text = "Successfully Registered!!!";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label10.Text = "Wellcome: " + "<b>" + Session["UserName"] + "</b>";
        }

        protected void Available_Click(object sender, EventArgs e)
        {
            AvailableGrid.Visible = true;
            GridView1.Visible = false;
        }
        protected void VIPRooms_Click(object sender, EventArgs e)
        {
            VIPGr.Visible = true;
            GridView1.Visible = false;
        }
    }
}