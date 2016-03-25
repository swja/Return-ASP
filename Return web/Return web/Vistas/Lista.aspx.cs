using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace Return_web.Vistas
{
    public partial class Lista : System.Web.UI.Page
    {
        MySqlConnection san = new MySqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                san = new MySqlConnection("server=localhost;User Id=root;password=root;database=webaplicación");
                san.Open();
                Label1.Text = "COnexion exitosa";
                string llenar="SELECT id_doc AS `#`, Cedula, concat( Nom_doc_encon,' ', Ape_doc_encon) AS 'Nombres del documento', Ced_per_encon AS '#Ced quien encontro', concat(Nom_pers_encon, ' ', Ape_perso_encon) as 'Nombres quien encontro', Nmr_contacto as 'Telefono de contacto', Email_contacto as 'Email de contacto', Lugar_encon as 'Lugar donde encontro', Fecha_registro as 'Fecha de registro en el sistema' FROM documentos";
                MySqlDataAdapter data = new MySqlDataAdapter(llenar, san);
                System.Data.DataSet set = new System.Data.DataSet();
                data.Fill(set, "documentos");
                GridView1.DataSource = set;
                GridView1.DataMember = "documentos";

            }
            catch(Exception)
            {
                Button1.Attributes["onclick"] = "return Mensaje();";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}