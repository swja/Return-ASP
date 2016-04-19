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
            Return_web.Vistas.Autentificacion au = new Vistas.Autentificacion();
           /* bool ban;
            ban = false;
            if(ban==false)
            {
                Response.Write("<script>window.alert('No puede realizar la acción solicitada. ');</script>");
                Response.Redirect("~/Vistas/Inicio.aspx");
            }*/
        }

        protected void Ingreso_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Vistas/Ingresar.aspx");  
        }

        protected void Ingreso0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Vistas/Busca.aspx");
        }
    }
}