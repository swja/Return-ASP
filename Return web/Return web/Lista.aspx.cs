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
            Server.Transfer("~/Inicio.aspx",true);
            Response.Expires = 0;
            Response.Write("<script>self.close();</script>");
           
        }

        public void Abrir(string url)

        {
            ClientScript.RegisterStartupScript(
            this.GetType(), "newWindow", String.Format("<script>window.open('{0}');</script>", url));

        }
    }

}