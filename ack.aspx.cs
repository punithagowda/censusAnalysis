using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using QRCoder;
using System.Drawing;
using System.IO;
using System.Data.SqlClient;

namespace census
{
    public partial class ack : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=census;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = familydata1.id;
            Label1.Text = "Family ID:"+id.ToString();
            string sql = "select f.Name,f.Gender,f.Address,f.Relationship,f.DOB,f.marital_status,f.Education,f.Occupation,f.father_spouse,f.Religion from family f where f.ID = '" + id + "'";      
            string sql1 = "select f1.Name,f1.Gender,f1.Address,f1.Relationship,f1.DOB,f1.marital_status,f1.Education,f1.Occupation,f1.father_spouse,f1.Religion from family1 f1 where f1.ID = '" + id + "'";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql,con);
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, con);
            DataTable dt = new DataTable();
            DataTable dt1 = new DataTable();
            da.Fill(dt);
            da1.Fill(dt1);
            GridView1.DataSource = dt;
            GridView2.DataSource = dt1;
            GridView1.DataBind();
            GridView2.DataBind();
            con.Close();
            string code = Label1.Text.Trim();
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
            System.Web.UI.WebControls.Image imgBarCod = new System.Web.UI.WebControls.Image();
            Image3.Height = 100;
            Image3.Width = 100;
            using (Bitmap bitMap = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                    Image3.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default1.aspx");
        }
    }
}