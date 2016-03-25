using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Return_web.Vistas
{
    public partial class Ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label13.Text = System.DateTime.Now.ToString();
            //Label13.Text = Calendar1.SelectedDate.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}