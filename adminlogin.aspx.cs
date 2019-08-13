using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace census
{
    public partial class adminlogin : System.Web.UI.Page
    {

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text=="" || TextBox2.Text=="")
            {
                Response.Write("<script>alert('Enter the Credentials to login');</script>");
            }
            else if(TextBox1.Text=="admin" && TextBox2.Text=="admin123")
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username and Password');</script>");
            }
        }
    }
}