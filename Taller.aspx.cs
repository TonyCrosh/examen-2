using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaLibros.CapaLogica;
using SistemaLibros.CapModelo;

namespace SistemaLibros.vista
{
    public partial class Taller: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();

        }

        public static void MostrarAlerta(Page page, string message)
        {
            string script = $"<script type='text/javascript'>alert('{message}');</script>";
            ClientScriptManager cs = page.ClientScript;
            cs.RegisterStartupScript(page.GetType(), "AlertScript", script);
        }

        protected void bagregar_Click(object sender, EventArgs e)
        { 
            ClsUsuario.nombre = tnombre.Text;
            if (Usuario.AgregarUsuario(ClsUsuario.nombre) > 0)
            {
                MostrarAlerta("Autor Ingresado");


            }
            else
            { 
                MostrarAlerta(this, "Error");
            
            
            }
        

        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM equipo"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind(); // refrescar
                        }
                    }
                }
            }
        }

        protected void bagregar_Click1(object sender, EventArgs e)
        {

        }
    }
}