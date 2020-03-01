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
namespace tamk
{
    public partial class Register : System.Web.UI.Page
    {

        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlCommand com;

        protected void btn_register_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strConnString);
            com = new SqlCommand();
            com.Connection = conn;
            com.CommandType = CommandType.Text;
            com.CommandText = "Insert into Login values(@UserName,@Password,@Name,@DateOfBirth,@Gender,@Address,@Email,@Phonenumber)";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@UserName", UserName.Text);
            com.Parameters.AddWithValue("@Password", Password.Text);
            com.Parameters.AddWithValue("@Name", Name.Text);
            com.Parameters.AddWithValue("@DateOfBirth", DateOfBirth.Text);
            com.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
            com.Parameters.AddWithValue("@Address", Address.Text);
            com.Parameters.AddWithValue("@Email", Email.Text);
            com.Parameters.AddWithValue("@Phonenumber", Phonenumber.Text);
            if (conn.State == ConnectionState.Closed)
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
            noti.Text = "Successfully Registered!!!";
            UserName.Text = "";
        }
    }
}
