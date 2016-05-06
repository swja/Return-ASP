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
            /*bool uno;
            Lista lista = new Lista();
            uno = PreviousPage.ban;
            if(uno== true)
            {
                Response.Write("<script>window.alert('No se puede realizar la acción. ');</script>");
                Abrir("Autentificacion.aspx");
            }*/
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "Adminreturnwebbd" && TextBox2.Text == "Returnwebbdadmin")
                {
                    Abrir("Lista.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('Credenciales de acceso incorrectas. ');</script>");
                    Label3.Visible = true;
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }
            
            catch(Exception ex)
            {
                Response.Write("<script>window.alert('Error en la conexión, Error: \n" + ex.Message + ". ');</script>");
            }
            
        }

        public void Abrir(string url)

        {
            ClientScript.RegisterStartupScript(

            this.GetType(), "newWindow", String.Format("<script>window.open('{0}');</script>", url));
        }
    }
}