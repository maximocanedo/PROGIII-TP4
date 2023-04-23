using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string valorDato = Request.QueryString["dato"];

            // Comprueba si el valor del dato es null o vacío
            if (!string.IsNullOrEmpty(valorDato))
            {
                string cadenaConexion = Data.LIBRERIA;
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                conexion.Open();
                string consulta = "select * from Libros where IdTema="+valorDato;
                SqlCommand comando = new SqlCommand(consulta, conexion);
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);

                // Crea una nueva instancia del objeto DataTable
                DataTable tabla = new DataTable();

                adaptador.Fill(tabla);
                GridView1.DataSource = tabla;
                GridView1.DataBind();
                conexion.Close();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            string urlRedireccion = "https://localhost:44342/Ejercicio3.aspx";

            Response.Redirect(urlRedireccion);
        }
    }
}