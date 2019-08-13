using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace census
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        float a=0, b;
        int year;
        int i = 0;
        float[] yaxix = new float[5];
      
        float[] xaxix = { 1981, 1991, 2001, 2011, 2021 };
        float[] prob = new float[4];
        int[] prob1 = new int[4];

        protected void Button2_Click(object sender, EventArgs e)
        {
            var data = new List<KeyValuePair<int, float>>();
            string sql = "select u.Year,u." + DropDownList6.Text + " from  unemployment_rate u where u.Region = '" + DropDownList5.Text + "'  and u.Age_group = '" + DropDownList4.Text + "' ";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                year = Convert.ToInt32(rd.GetString(0).ToString());

                b = float.Parse(rd.GetString(1).ToString());
                yaxix[i] = b;
                a = a + b;
                prob1[i] = year;
                prob[i] = b;
                i++;

            }
            con.Close();
            for (i = 0; i < 4; i++)
            {
                float x = prob[i] / a;
                data.Add(new KeyValuePair<int, float>(prob1[i], x));

            }
            Random r = new Random();
            double ran = r.NextDouble();

            float[] com = new float[4];
            for (int j = 0; j < data.Count; j++)
            {
                if (j == 0)
                {
                    com[j] = data[j].Value;
                }
                else
                {
                    com[j] = com[j - 1] + data[j].Value;
                }
            }
            for (int j = 0; j < data.Count; j++)
            {

                if (ran < com[j])
                {
                    float value = data[j].Value;
                    value = value * a;
                    yaxix[4] = value;
                    Label1.Text = "The predicted/generated percentage rate of selected area for <b> 2021 is: " + value.ToString() + "</b>";
                    break;
                }
            }
            Chart1.Series[0].Points.DataBindXY(xaxix, yaxix);
            Chart1.Series[0].ChartType = SeriesChartType.Column;
        }
    

        protected void Button1_Click(object sender, EventArgs e)
        {
           var data= new List<KeyValuePair<int, float>> ();
            string sql = "select e.Year,e." + DropDownList2.Text + " from education e where e.Education_level='" + DropDownList1.Text + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                 year = Convert.ToInt32(rd.GetString(0).ToString());
                
                b = float.Parse(rd.GetString(1).ToString());
               
                a = a + b;
                yaxix[i] = b;
                prob1[i] = year;
                prob[i] = b;
                i++;
             
            }
            con.Close();
            for(i=0;i<4;i++)
            {
                float x = prob[i] / a;
                 data.Add(new KeyValuePair<int, float>(prob1[i], x));
                
            }
            Random r = new Random();
            double ran = r.NextDouble();
           
            float[] com = new float[4];
            for(int j=0;j<data.Count;j++)
            {
                if(j==0)
                {
                    com[j] = data[j].Value;
                }
                else
                {
                    com[j] = com[j - 1] + data[j].Value;
                }
            }
            for (int j = 0; j < data.Count; j++)
            {

                if (ran < com[j])
                {
                    float value = data[j].Value;
                    value = value * a;
                    yaxix[4] = value;
                    Label1.Text = "The predicted/generated percentage rate of selected area for <b> 2021 is: " + value.ToString() + "</b>";
                    break;
                }
            }
            Chart1.Series[0].Points.DataBindXY(xaxix, yaxix);
            Chart1.Series[0].ChartType = SeriesChartType.Column;

        }
    }
}