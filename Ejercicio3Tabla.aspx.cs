using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico4 {
    public partial class WebForm2 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            string valorDato = Request.QueryString["dato"];

            // Comprueba si el valor del dato es null o vacío
            if (!string.IsNullOrEmpty(valorDato)) {
                string cadenaConexion = Data.LIBRERIA;
                using (SqlConnection conexion = new SqlConnection(cadenaConexion)) {
                    try {
                        conexion.Open();
                        string consulta = "select [IdLibro] as [ID], [IdTema] as [Tema], [Titulo] as [Título], FORMAT([Precio],'C', 'en-us') AS [Precio], [Autor] from Libros where IdTema=@idTema";
                        SqlCommand comando = new SqlCommand(consulta, conexion);
                        comando.Parameters.AddWithValue("@idTema", valorDato);
                        SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                        // Crea una nueva instancia del objeto DataTable
                        DataTable tabla = new DataTable();
                        adaptador.Fill(tabla);
                        GridView1.DataSource = tabla;
                        GridView1.DataBind();
                    }
                    catch (SqlException ex) {
                        // Manejar la excepción
                        Console.WriteLine("Error de SQL: " + ex.Message);
                    }
                    catch (Exception ex) {
                        // Manejar otras excepciones
                        Console.WriteLine("Error: " + ex.Message);
                    }
                    finally {
                        if (conexion.State != ConnectionState.Closed) {
                            conexion.Close();
                        }
                    }
                }

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e) {

            string urlRedireccion = "./Ejercicio3.aspx";

            Response.Redirect(urlRedireccion);
        }
    }
}