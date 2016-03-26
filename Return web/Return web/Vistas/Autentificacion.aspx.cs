using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Return_web.Vistas
{
    public partial class Autentificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text== "Admin" && TextBox2.Text== "Admin")
            {
                Response.Redirect("~/Vistas/Lista.aspx");
            }
            else
            {
                Response.Write("<script>window.alert('Credenciales Incorrectas);</script>");
                Label3.Visible = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
                
            }
        }

    }
}