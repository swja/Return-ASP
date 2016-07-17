using System;
using MySql.Data.MySqlClient;

namespace Return_web.Vistas
{
    public partial class Ingresar : System.Web.UI.Page
    {
        MySqlConnection san = new MySqlConnection("Server=MYSQL5013.Smarterasp.net;Database=db_a094ae_docext;Uid=a094ae_docext;Pwd=d0cum3nt0s!X;");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label13.Text = System.DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string myconx = "";
                if (myconx == "")
                {
                    myconx = "Server=MYSQL5013.Smarterasp.net;Database=db_a094ae_docext;Uid=a094ae_docext;Pwd=d0cum3nt0s!X;";
                }
                if (TextBox2.Text == "" && TextBox3.Text == "" && TextBox5.Text == "" && TextBox6.Text == "" && TextBox7.Text == "")
                {
                    Label15.Visible = true;
                    Label3.ForeColor = System.Drawing.Color.Red;
                    Label4.ForeColor = System.Drawing.Color.Red;
                    Label7.ForeColor = System.Drawing.Color.Red;
                    Label8.ForeColor = System.Drawing.Color.Red;
                    Label9.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    try
                    {
                        MySqlConnection myConnection = new MySqlConnection(myconx);
                        string inserta = "INSERT INTO documentos (id_tipo_doc, Cedula, Nom_doc_encon, Ape_doc_encon, Ced_per_encon, Nom_pers_encon, Ape_perso_encon, Nmr_contacto, Email_contacto, Lugar_encon, Fecha_registro,comentario) VALUES (?tipo_doc, ?ced, ?nombres, ?apellidos, ?ced_encon, ?nom_encon, ?ape_encon, ?nmr_contac, ?mail_contac, ?lug_encon, ?fecha_reg, ?comen)";
                        MySqlCommand cmd = new MySqlCommand(inserta);
                        cmd.Parameters.AddWithValue("?tipo_doc", this.DropDownList1.SelectedValue);
                        cmd.Parameters.AddWithValue("?ced", this.TextBox1.Text);
                        cmd.Parameters.AddWithValue("?nombres", this.TextBox2.Text);
                        cmd.Parameters.AddWithValue("?apellidos", this.TextBox3.Text);
                        cmd.Parameters.AddWithValue("?ced_encon", this.TextBox4.Text);
                        cmd.Parameters.AddWithValue("?nom_encon", this.TextBox5.Text);
                        cmd.Parameters.AddWithValue("?ape_encon", this.TextBox6.Text);
                        cmd.Parameters.AddWithValue("?nmr_contac", this.TextBox7.Text);
                        cmd.Parameters.AddWithValue("?mail_contac", this.TextBox8.Text);
                        cmd.Parameters.AddWithValue("?lug_encon", this.TextBox9.Text);
                        cmd.Parameters.AddWithValue("?fecha_reg", this.Label13.Text);
                        cmd.Parameters.AddWithValue("?comen", this.TextBox10.Text);
                        cmd.Connection = myConnection;
                        myConnection.Open();
                        int res = cmd.ExecuteNonQuery();
                        myConnection.Close();

                        if (res == 1)
                        {
                            Response.Write("<script>window.alert('Informacion Ingresada Correctamente');</script>" + "<script>window.setTimeout(location.href='Inicio.aspx', 2000);</script>");
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";
                            DropDownList1.SelectedValue = "1";
                            cmd.Parameters.Clear();
                            Server.Transfer("Inicio.aspx");
                        }

                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>window.alert('No se pudo ingresar la información, Error: \n" + ex.Message + ". ');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>window.alert('Error en la conexión, Error: \n" + ex.Message + ". ');</script>");
            }
        }
    }
}