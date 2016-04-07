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
            String script = "<script type=text/javascript>novolver();</script>";
            ScriptManager.RegisterStartupScript(this, GetType(), "novolver", script, false);
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