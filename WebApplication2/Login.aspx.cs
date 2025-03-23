using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
{
 
    Label1.Text = "Button clicked";  // To check if Button1_Click is triggered.
    string connStr = ConfigurationManager.ConnectionStrings["web2ConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connStr);

    try
    {
        conn.Open();
        string username = TextBox1.Text.Trim(); // Trim spaces from username
        string password = TextBox2.Text.Trim(); // Trim spaces from password

        Label1.Text += " | Entered Username: " + username + " | Entered Password: " + password;

        string select_Query = "SELECT * FROM users WHERE username=@username AND password=@password";
        SqlCommand cmd = new SqlCommand(select_Query, conn);
        cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = username;
        cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;

        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.Read())
        {
            Response.Redirect("./AdminPage/HomeAdmin.aspx");
        }
        else
        {
            Label1.Text = "Username & Password Is not correct. Try again..!!!!";
        }

        sdr.Close(); // Close the reader
    }
    catch (Exception ex)
    {
        Label1.Text = "Error: " + ex.Message;
    }
    finally
    {
        conn.Close();
    }
}
    }
}