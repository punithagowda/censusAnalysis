using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;


namespace census
{
    public partial class changepassword : System.Web.UI.Page
    {
        string name;
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            name = officerlogin.name;
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            if(TextBox1.Text=="" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                Response.Write("<script>alert('Enter all asked details')</script>");

            }
            else if (TextBox2.Text == TextBox1.Text)
            {
                Response.Write("<script>alert(' New password should not match old password')</script>");
            }
            else if(TextBox2.Text != TextBox3.Text)
            {
                Response.Write("<script>alert('Password doesnot match')</script>");
            }
            else
            {
                int id = Convert.ToInt32(TextBox4.Text);
                con.Open();
                string sql = "update officer1 set password = '" + TextBox2.Text.Trim() + "' where id ='" + id+ "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                con.Close();               
                Response.Write("<script>alert('Password Changed')</script>");
            }
        }
    }
}