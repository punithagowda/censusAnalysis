using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace census
{
    public partial class manageofficer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");




        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.Binddata();
        }
        public void Binddata()
        {
            con.Open();
            string sql = "select * from officer1";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Binddata();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Open();
            int officerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string sql = "delete from officer1 where id = '" + officerId + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Binddata();
        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.Binddata();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            con.Open();
            int officerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string name = (row.FindControl("txt2") as TextBox).Text;
            string gender = (row.FindControl("txt3") as TextBox).Text;
            string dob = (row.FindControl("txt4") as TextBox).Text;
            string homecity = (row.FindControl("txt6") as TextBox).Text;
            string workcity = (row.FindControl("txt7") as TextBox).Text;
           long phone = Convert.ToInt64((row.FindControl("txt9") as TextBox).Text);
            string email = (row.FindControl("txt8") as TextBox).Text;
           
            string sql = "update officer1 set name ='"+name+"' , gender =' " +gender + "' , dob = '"+dob+"', homecity = '"+homecity+"', workcity = '"+workcity+"',phone ='"+phone+"',email='"+email+"' where id = '" + officerId + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Binddata();
        }
    }
}