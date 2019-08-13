using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace census
{
    public partial class officerlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");
        public static string name;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bool exist = false;
            con.Open();
            string sql = "select * from officer1";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                if(TextBox1.Text.Trim() == reader.GetString(7).Trim() && TextBox2.Text.Trim() == reader.GetString(8).Trim())
                {
                    exist = true;
                    break;
                }
            }
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script>alert('Enter Username and password')</script>");
            }
            
            else if (exist == false)
            {
                Response.Write("<script>alert('Invalid Username and password')</script>");
            }
            else
            {
                Response.Redirect("Default1.aspx");
                name = TextBox1.Text.Trim();
            }
        }
    }
}