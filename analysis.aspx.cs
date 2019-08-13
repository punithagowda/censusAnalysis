using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;

namespace census
{
    public partial class analysis : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");
        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Population")
            {
                DropDownList4.Visible = false;
                DropDownList3.AutoPostBack = false;
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Rural");
                DropDownList3.Items.Add("Urban");
                DropDownList3.Items.Add("All");
            }
            else if(DropDownList1.Text=="Education")
            {
                DropDownList4.Visible = false;
                DropDownList3.AutoPostBack = false;

                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Illiterate");
                DropDownList3.Items.Add("Literate without education level");
                DropDownList3.Items.Add("Primary");
                DropDownList3.Items.Add("Middle");
                DropDownList3.Items.Add("Metriculate/Secondary");
                DropDownList3.Items.Add("Higher Secondary");
                DropDownList3.Items.Add("Non Technical Diploma");
                DropDownList3.Items.Add("Technical Diploma");
                DropDownList3.Items.Add("Graduate and above");
            }
            else if (DropDownList1.Text == "Unemployement")
            {
                DropDownList3.AutoPostBack = true;
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Rural");
                DropDownList3.Items.Add("Urban");
                DropDownList3.Items.Add("All");

            }
            else if (DropDownList1.Text == "Women Employement")
            {
                DropDownList4.Visible = false;
                DropDownList3.AutoPostBack = false;
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Central government");
                DropDownList3.Items.Add("Local bodies");
                DropDownList3.Items.Add("State government");
                DropDownList3.Items.Add("Total");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Population")
            {
                con.Open();
                string sql = "select Year,Male,Female from population1 where Region ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter d = new SqlDataAdapter(sql, con);
                DataTable ChartData = new DataTable();
                d.Fill(ChartData);
                string[] XPointMember = new string[ChartData.Rows.Count];
                float[] YPointMember = new float[ChartData.Rows.Count];
                float[] YPointMember1 = new float[ChartData.Rows.Count];
                for (int count = 0; count < ChartData.Rows.Count; count++)
                {
                    XPointMember[count] = ChartData.Rows[count][0].ToString();
                    YPointMember[count] = float.Parse(ChartData.Rows[count][1].ToString());
                    YPointMember1[count] = float.Parse(ChartData.Rows[count][2].ToString());
                }
                Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);
                Chart1.Series[1].Points.DataBindXY(XPointMember, YPointMember1);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
                con.Close();
                Label1.Text = "Percentage distribution of Population in " + DropDownList3.Text + " area";
            }
            else if (DropDownList1.Text == "Education")
            {
                con.Open();
                string sql = "select Year,Male,Female from education where Education_level ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter d = new SqlDataAdapter(sql, con);
                DataTable ChartData = new DataTable();
                d.Fill(ChartData);
                string[] XPointMember = new string[ChartData.Rows.Count];
                float[] YPointMember = new float[ChartData.Rows.Count];
                float[] YPointMember1 = new float[ChartData.Rows.Count];
                for (int count = 0; count < ChartData.Rows.Count; count++)
                {
                    XPointMember[count] = ChartData.Rows[count][0].ToString();
                    YPointMember[count] = float.Parse(ChartData.Rows[count][1].ToString());
                    YPointMember1[count] = float.Parse(ChartData.Rows[count][2].ToString());
                }
                Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);
                Chart1.Series[1].Points.DataBindXY(XPointMember, YPointMember1);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
                Chart1.Series[1].ChartType = SeriesChartType.Column;
                con.Close();
                Label1.Text = "Percentage distribution of Education level of people in " + DropDownList3.Text + " level";

            }
            else if (DropDownList1.Text == "Unemployement")
            {
                con.Open();
                string sql = "select Year,Male,Female from unemployment_rate where Region ='" + DropDownList3.Text.Trim() + "' and Age_group ='" + DropDownList4.Text + "'";
                SqlDataAdapter d = new SqlDataAdapter(sql, con);
                DataTable ChartData = new DataTable();
                d.Fill(ChartData);
                string[] XPointMember = new string[ChartData.Rows.Count];
                float[] YPointMember = new float[ChartData.Rows.Count];
                float[] YPointMember1 = new float[ChartData.Rows.Count];
                for (int count = 0; count < ChartData.Rows.Count; count++)
                {

                    XPointMember[count] = ChartData.Rows[count][0].ToString();
                    YPointMember[count] = float.Parse(ChartData.Rows[count][1].ToString());
                    YPointMember1[count] = float.Parse(ChartData.Rows[count][2].ToString());
                }
                Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);
                Chart1.Series[1].Points.DataBindXY(XPointMember, YPointMember1);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
                con.Close();
                Label1.Text = "Percentage distribution of Unemployement rate of Age group "+DropDownList4.Text+" in " + DropDownList3.Text + " area";

            }
            else if (DropDownList1.Text == "Women Employement")
            {
                con.Open();
                string sql = "select Year,Female,Total from female_employment where Government ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter d = new SqlDataAdapter(sql, con);
                DataTable ChartData = new DataTable();
                d.Fill(ChartData);
                string[] XPointMember = new string[ChartData.Rows.Count];
                float[] YPointMember = new float[ChartData.Rows.Count];
                float[] YPointMember1 = new float[ChartData.Rows.Count];
                for (int count = 0; count < ChartData.Rows.Count; count++)
                {
                    XPointMember[count] = ChartData.Rows[count][0].ToString();
                    YPointMember[count] = float.Parse(ChartData.Rows[count][1].ToString());
                    YPointMember1[count] = float.Parse(ChartData.Rows[count][2].ToString());
                }
                Chart1.Series[0].Name = "Women";
                Chart1.Series[1].Name = "Total";
                Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);
                Chart1.Series[1].Points.DataBindXY(XPointMember, YPointMember1);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
                con.Close();
                Label1.Text = "Percentage distribution of women employement rate in " + DropDownList3.Text;

            }
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Unemployement")
            {
                DropDownList4.Visible = true;
                DropDownList4.Items.Clear();
                DropDownList4.Items.Add("15-29");
                DropDownList4.Items.Add("30-44");
                DropDownList4.Items.Add("45-59");
                DropDownList4.Items.Add("60 and Above");
                DropDownList4.Items.Add("Total");
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Population")
            { 
                con.Open();
                string sql = "select Year,Male,Female from population1 where Region ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else if (DropDownList1.Text == "Education")
            {
                con.Open();
                string sql = "select Year,Male,Female from education where Education_level ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else if (DropDownList1.Text == "Unemployement")
            {
                con.Open();
                string sql = "select Year,Male,Female from unemployment_rate where Region ='" + DropDownList3.Text.Trim() + "' and Age_group ='" + DropDownList4.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else if (DropDownList1.Text == "Women Employement")
            {
                con.Open();
                string sql = "select Year,Female,Total from female_employment where Government ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
        }      
        protected void Chart1_Load(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Population")
            {
                con.Open();
                string sql = "select Year,Male,Female from population1 where Region ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else if (DropDownList1.Text == "Education")
            {
                con.Open();
                string sql = "select Year,Male,Female from education where Education_level ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else if (DropDownList1.Text == "Unemployement")
            {
                con.Open();
                string sql = "select Year,Male,Female from unemployment_rate where Region ='" + DropDownList3.Text.Trim() + "' and Age_group ='" + DropDownList4.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else if (DropDownList1.Text == "Women Employement")
            {
                con.Open();
                string sql = "select Year,Female,Total from female_employment where Government ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
        }
        protected void GridView1_Load(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Population")
            {
                con.Open();
                string sql = "select Year,Male,Female from population1 where Region ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter d = new SqlDataAdapter(sql, con);
                DataTable ChartData = new DataTable();
                d.Fill(ChartData);
                string[] XPointMember = new string[ChartData.Rows.Count];
                float[] YPointMember = new float[ChartData.Rows.Count];
                float[] YPointMember1 = new float[ChartData.Rows.Count];
                for (int count = 0; count < ChartData.Rows.Count; count++)
                {
                    XPointMember[count] = ChartData.Rows[count][0].ToString();
                    YPointMember[count] = float.Parse(ChartData.Rows[count][1].ToString());
                    YPointMember1[count] = float.Parse(ChartData.Rows[count][2].ToString());
                }
                Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);
                Chart1.Series[1].Points.DataBindXY(XPointMember, YPointMember1);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
                con.Close();
            }
            else if (DropDownList1.Text == "Education")
            {
                con.Open();
                string sql = "select Year,Male,Female from education where Education_level ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter d = new SqlDataAdapter(sql, con);
                DataTable ChartData = new DataTable();
                d.Fill(ChartData);
                string[] XPointMember = new string[ChartData.Rows.Count];
                float[] YPointMember = new float[ChartData.Rows.Count];
                float[] YPointMember1 = new float[ChartData.Rows.Count];
                for (int count = 0; count < ChartData.Rows.Count; count++)
                {
                    XPointMember[count] = ChartData.Rows[count][0].ToString();
                    YPointMember[count] = float.Parse(ChartData.Rows[count][1].ToString());
                    YPointMember1[count] = float.Parse(ChartData.Rows[count][2].ToString());
                }
                Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);
                Chart1.Series[1].Points.DataBindXY(XPointMember, YPointMember1);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
                Chart1.Series[1].ChartType = SeriesChartType.Column;
                con.Close();
            }
            else if (DropDownList1.Text == "Unemployement")
            {
                con.Open();
                string sql = "select Year,Male,Female from unemployment_rate where Region ='" + DropDownList3.Text.Trim() + "' and Age_group ='" + DropDownList4.Text + "'";
                SqlDataAdapter d = new SqlDataAdapter(sql, con);
                DataTable ChartData = new DataTable();
                d.Fill(ChartData);
                string[] XPointMember = new string[ChartData.Rows.Count];
                float[] YPointMember = new float[ChartData.Rows.Count];
                float[] YPointMember1 = new float[ChartData.Rows.Count];
                for (int count = 0; count < ChartData.Rows.Count; count++)
                {

                    XPointMember[count] = ChartData.Rows[count][0].ToString();
                    YPointMember[count] = float.Parse(ChartData.Rows[count][1].ToString());
                    YPointMember1[count] = float.Parse(ChartData.Rows[count][2].ToString());
                }
                Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);
                Chart1.Series[1].Points.DataBindXY(XPointMember, YPointMember1);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
                con.Close();
            }
            else if (DropDownList1.Text == "Women Employement")
            {
                con.Open();
                string sql = "select Year,Female,Total from female_employment where Government ='" + DropDownList3.Text.Trim() + "'";
                SqlDataAdapter d = new SqlDataAdapter(sql, con);
                DataTable ChartData = new DataTable();
                d.Fill(ChartData);
                string[] XPointMember = new string[ChartData.Rows.Count];
                float[] YPointMember = new float[ChartData.Rows.Count];
                float[] YPointMember1 = new float[ChartData.Rows.Count];
                for (int count = 0; count < ChartData.Rows.Count; count++)
                {
                    XPointMember[count] = ChartData.Rows[count][0].ToString();
                    YPointMember[count] = float.Parse(ChartData.Rows[count][1].ToString());
                    YPointMember1[count] = float.Parse(ChartData.Rows[count][2].ToString());
                }
                Chart1.Series[0].Name = "Women";
                Chart1.Series[1].Name = "Total";
                Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);
                Chart1.Series[1].Points.DataBindXY(XPointMember, YPointMember1);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
                con.Close();
            }
        }
    }
}