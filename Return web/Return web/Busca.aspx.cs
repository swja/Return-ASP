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
            ape.Enabled = false;
            ced.Enabled = false;
            if (ced.Text == "" && ape.Text == "")
            {
                Response.Write("<script>window.alert('Ingrese información para buscar);</script>");
                Label4.Visible = true;
                Label5.Visible = true;
            }
            else
            {
                Label6.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ced.Text = "";
            ape.Text = "";
            GridView1.DataBind();
            GridView2.DataBind();
            Button1.Enabled = true;
            ape.Enabled = true;
            ced.Enabled = true;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
        }

        protected void cambio_busca(object sender, EventArgs e)
        {
            ape.Text = ape.Text + '%';
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            if (row.RowIndex > -1)
                for (int i = 0; i < row.Cells.Count; i += 1)
                    row.Cells[i].Visible = false;
        }
    }
}


