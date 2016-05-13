using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Return_web
{
    public partial class Autentifica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox3.Text == "Adminreturnwebbd" && TextBox4.Text == "Returnwebbdadmin")
                {
                    Response.Redirect("~/Lista.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('Credenciales de acceso incorrectas. ');</script>");
                    Label3.Visible = true;
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                }
            }

            catch (Exception ex)
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
