using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace census
{
    public partial class familydata1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");
        public static int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = familydata.id1;
            TextBox8.Text = id.ToString();
            TextBox8.Enabled = false;
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox10.Text == "" || TextBox11.Text == "" || TextBox2.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox9.Text == "" || DropDownList2.Text == "Select Marital Status" || DropDownList3.Text == "Select Education" || DropDownList4.Text == "Select Occupation" || DropDownList5.Text == "Select Religion")
            {
                Response.Write("<script>alert('Enter all data')</script>");
            }
            else
            {
                con.Open();
                string sql = "insert into family1 values(@id,@name,@gender,@address,@relationship,@dob,@martialstatus,@education,@occupation,@fatherspouse,@religion)";
                SqlCommand cmd = new SqlCommand(sql, con);
                string add = TextBox2.Text.Trim() + "_" + TextBox9.Text.Trim() + "_" + TextBox10.Text.Trim();
                cmd.Parameters.AddWithValue("@id", Int16.Parse(TextBox8.Text.Trim()));
                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Text.Trim());
                cmd.Parameters.AddWithValue("@address", add);
                cmd.Parameters.AddWithValue("@relationship", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@martialstatus", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@education", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@occupation", DropDownList4.Text);
                cmd.Parameters.AddWithValue("@fatherspouse", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@religion", DropDownList5.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Added Successfully')</script>");
                clear();
            }
            
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ack.aspx");
        }
        public void clear()
        {
            TextBox1.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox2.Text = "";
            TextBox9.Text = "";
            TextBox7.Text = "";

        }
    }
}