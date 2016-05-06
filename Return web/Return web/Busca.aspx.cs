using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;



namespace Return_web.Vistas
{
    public partial class Busca : System.Web.UI.Page
    {
        MySqlConnection san = new MySqlConnection("server=localhost;database=webaplicación;user Id=root;password=root");
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = true;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Enabled = false;
            //Button3.Enabled = true;
            /*try            {
                string myconx = "";
                if (myconx == "")
                {
                    myconx = "server=localhost;database=webaplicación;user Id=root;password=root";
                }*/
                if (ced.Text == "" && ape.Text == "")
                {
                    Response.Write("<script>window.alert('Ingrese información para buscar);</script>");
                }/*
                else
                {
                    try
                    {
                        MySqlConnection myConnection = new MySqlConnection(myconx);
                        string busca = "select distinct Ape_doc_encon as Apellidos, Nom_doc_encon as Nombres, COUNT(*) AS 'Numero de Registros Encontrados' FROM documentos where Cedula =" + ced.Text + "";
                        MySqlCommand cmd = new MySqlCommand(busca);
                        MySqlDataAdapter data = new MySqlDataAdapter(busca, san);
                        System.Data.DataSet set = new System.Data.DataSet();
                        data.Fill(set, "documentos");
                        Grida.DataSource = set;
                        Grida.DataMember = "documentos";
                        Grida.Visible = true;
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>window.alert('No se pudo realizar la consulta, Error: \n" + ex.Message + ". ');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>window.alert('Error en la conexión, Error: \n" + ex.Message + ". ');</script>");
            }
            */
            /* DataTable dt = new DataTable();
             using (SqlConnection conn = new SqlConnection("server=localhost;database=webaplicación;user Id=root;password=root"))
             {
                 string query = "select distinct Ape_doc_encon as Apellidos, Nom_doc_encon as Nombres, COUNT(*) AS 'Numero de Registros Encontrados' FROM documentos where Ape_doc_encon like'"+ape.Text +"%'group by Cedula";

                 SqlCommand cmd = new SqlCommand(query, conn);

                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                 da.Fill(dt);
             }
             if (dt.Rows.Count > 0)
             {
                 GridView2.DataSource = dt;
                 GridView2.DataBind();
             }
             else {
                 // lblMensaje.Text = "no hay registros";
                 Response.Write("<script>window.alert('NO hay informacion, Error: \n. ');</script>");
             }
             */

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ced.Text = "";
            ape.Text = "";
            GridView1.DataBind();
            GridView2.DataBind();
            Button1.Enabled = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }
    }
    }
            

  