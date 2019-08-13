using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace census
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || RadioButtonList1.Text == "")
            {
                Response.Write("<script>alert('Please enter all data')</script>");
            }
            else
            {
                bool exists = false;
                con.Open();
                string str3 = " select max(id) from oid";
                SqlCommand cmd3 = new SqlCommand(str3, con);
                SqlDataReader reader8 = cmd3.ExecuteReader();
                reader8.Read();
                int id = Convert.ToInt16(reader8.GetValue(0));
                id++;
                con.Close();
                con.Open();
                string str4 = "insert into  oid values(" + id + ")";
                SqlCommand cmd4 = new SqlCommand(str4, con);
                cmd4.ExecuteNonQuery();
                con.Close();
                con.Open();
                string sql1 = "select * from officer1";
                SqlCommand cmd1 = new SqlCommand(sql1, con);
                SqlDataReader rd = cmd1.ExecuteReader();
                while(rd.Read())
                {
                    if (TextBox5.Text.Trim() == rd.GetString(7).Trim())
                    {
                        exists = true;
                    }
                }
                con.Close();
                if (exists == true)
                {
                    Response.Write("<script>alert('Volunteer already exists')</script>");
                }
                else
                {
                    con.Open();
                    string sql = "insert into officer1 values(@id,@name,@gender,@dob,@home,@work,@phone,@email,@pass)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Text.Trim());
                    cmd.Parameters.AddWithValue("@dob", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@home", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@work", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@phone", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@pass", TextBox2.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Volunteer added succussfully')</script>");
                }
            }
        }
    }
}