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
    public partial class reg : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["web2ConnectionString"].ConnectionString);

                conn.Open();

                string insert_Query = "insert into users (username,password,gender,email,Mobile) values (@username,@password,@gender,@email,@Mobile)";
                SqlCommand cmd = new SqlCommand(insert_Query, conn);

                // Create and prepare an SQL statement.
                cmd.Prepare();
                cmd.Parameters.AddWithValue("@username",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", gender.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Mobile", TextBox4.Text.Trim());


                // Call Prepare after setting Parameters.
                cmd.ExecuteNonQuery();


                conn.Close();

                Response.Write("Student registered Successfully!!!");


            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
             gender = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
             gender = "Female";

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}