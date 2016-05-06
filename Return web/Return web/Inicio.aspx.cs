using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Return_web
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
            Response.Cache.SetAllowResponseInBrowserHistory(false);
            Response.Cache.SetNoStore();
            Response.Buffer = true;
        }

        protected void Ingreso_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Ingresar.aspx");  
        }

        protected void Ingreso0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Busca.aspx");
        }
    }
}