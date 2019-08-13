using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace census
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string name;
        public static string mail;
        protected void Page_Load(object sender, EventArgs e)
        {
            name = officerlogin.name;
            Label1.Text = name;
            Label1.Visible = false;
            mail = Label1.Text;
        }
        
    }
}