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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        float p,a,b,c,pre=0;

        
        float[] yaxix = new float[5];
        float[] xaxix = { 1981, 1991, 2001, 2011,2021 };

        protected void Button1_Click(object sender, EventArgs e)
        {
         
                string prob = "";
            string all = "All";
                string sql = "select p.Year,p." + DropDownList2.Text + ",e.Year,e." + DropDownList2.Text + ",e.Total from population1 p,education e where p.Region='"+all+"' and e.Education_level='" + DropDownList1.Text + "' and  p.Year in (1981,1991,2001) and e.Year = p.Year";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader rd = cmd.ExecuteReader();
        

                while (rd.Read())
                {
                    int year = Convert.ToInt32(rd.GetString(0).ToString());
                     a = float.Parse(rd.GetString(1).ToString());
                     b = float.Parse(rd.GetString(3).ToString());
                     c = float.Parse(rd.GetString(4).ToString());
                    a = a / 100;
                    b = b / 100;
                    c = c / 100;
                    p = (b * c) / a;
                    pre = pre + p;                           
                }

                pre = pre / 4;
                prob = "The probability of " + DropDownList1.Text + " education level from 1981 in India  of " + DropDownList2.Text + " is "+pre*100+"\r\n";                
                Label1.Text = prob;
                con.Close();
              
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string prob = " ";
            string sql = "select p.Year,p." + DropDownList6.Text + ",u.Year,u." + DropDownList6.Text + ",u.Total from population1 p,unemployment_rate u where p.Region='" + DropDownList5.Text + "' and p.Region=u.Region and p.Year in (1981,1991,2001) and u.Age_group ='" + DropDownList4.Text + "'    and u.Year = p.Year";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                int year = Convert.ToInt32(rd.GetString(0).ToString());
                 a = float.Parse(rd.GetString(1).ToString());
                 b = float.Parse(rd.GetString(3).ToString());
                 c = float.Parse(rd.GetString(4).ToString());
               

                a = a / 100;
                b = b / 100;
                c = c / 100;
                p = (b * a) / c;
                pre = pre + p;
               
            }

            pre = pre / 4;
            prob = "The probability of unemployment rate of  " + DropDownList6.Text + "  from 1981 in India of age group " + DropDownList4.Text + " in " + DropDownList5.Text + " region is "+pre*100+"\r\n";
            Label1.Text = prob;
            con.Close();
           

        }

      
    }
} 