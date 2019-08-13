using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace census
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        float[] edu = new float[4];
        float[] un = new float[4];
        float x=0, y=0,xy=0;
        float s1 = 0, s2 = 0, z1,z2;
        protected void Button1_Click(object sender, EventArgs e)
        {
            string all = "All";
            string sql = "select e.Year,e." + DropDownList2.Text + ",u." + DropDownList2.Text + " from education e,unemployment_rate u where e.Education_level='" + DropDownList1.Text + "' and u.Age_group='" + DropDownList4.Text + "' and u.Region='"+all+"' and e.Year=u.Year";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();

            int i = 0;
            while (rd.Read())
            {
               
                edu[i] =float.Parse(rd.GetString(1).ToString());
                un[i] = float.Parse(rd.GetString(2).ToString());
                x = x + edu[i];
                y = y+un[i];
                i++;
            }
            con.Close();
            x = x / 4;
            y = y / 4;
            for(i=0;i<4;i++)
            {
                float a, b;
                a = edu[i];
                b = un[i];
                xy = xy + (a * b);
                z1 = Math.Abs((a - x)) * Math.Abs((a - x));
                z2 = Math.Abs((b - y)) * Math.Abs((b - y));
                s1 = s1 + z1;
                s2 = s2 + z2;

            }
            s1 = s1 / 3;
            s2 = s2 / 3;
           double s3 = Math.Sqrt(s1);
            double s4 = Math.Sqrt(s2);
            float cov = (xy - ( 4* y * x))/3;
            double cor = cov / (s3 * s4);
            Label2.Text = "Correlation is: " + cor.ToString();
            if(cor < -0.01 && cor > -0.20)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Negative(Very Weak)</b>";
            }
            else if(cor < -0.21 && cor > -0.40)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Negative(Weak)</b>";
            }
            else if (cor < -0.41 && cor > -0.60)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Negative(Moderate)</b>";
            }
            else if (cor < -0.61 && cor > -0.80)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Negative(Strong)</b>";
            }
            else if (cor < -0.81 && cor > -1.00)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Negative(Very Strong)</b>";
            }
            if (cor > 0.01 && cor < 0.20)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Positive(Very Weak)</b>";
            }
            else if (cor > 0.21 && cor < 0.40)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Positive(Weak)</b>";
            }
            else if (cor > 0.41 && cor < 0.60)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Positive(Moderate)</b>";
            }
            else if (cor > 0.61 && cor < 0.80)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <b>Positive(Strong)</b>";
            }
            else if (cor > 0.81 && cor < 1.00)
            {
                Label1.Text = "Correlation between Percentage distribution of Education Level <b>" + DropDownList1.Text + "</b> and Unemployment rate of  age group <b>" + DropDownList4.Text + "</b> of <b>" + DropDownList2.Text + "</b> is <h3>Positive(Very Strong)</b>";
            }
        }
    }
}