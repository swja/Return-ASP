using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Return_web.Vistas
{
    public partial class Lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Abrir("Inicio.aspx");
            //Response.Expires = 0;
            // Button2.Attributes.Add("onclick", "window.close();");
            //Response.Write("<script>self.close();</script>");
        }

        public void Abrir(string url)

        {

            ClientScript.RegisterStartupScript(
            this.GetType(), "newWindow", String.Format("<script>window.open('{0}');</script>", url));

        }
    }

}