using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico4 {
    public partial class Ejercicio2 : System.Web.UI.Page {
        public void MostrarMensaje(string mensaje) {
            string script = "MostrarMensaje('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "MostrarMensaje", script, true);
        }
        /// <summary>
        /// Crea un comando de filtro SQL para comparar el valor de un campo con un valor especificado.
        /// </summary>
        /// <param name="field">El nombre del campo en la tabla de la base de datos.</param>
        /// <param name="value">El valor con el que se comparará el campo.</param>
        /// <param name="filterType">El tipo de comparación a realizar (1 = igual a, 2 = mayor que, 3 = menor que).</param>
        /// <returns>Un comando SQL que se puede utilizar para filtrar los resultados de una consulta.</returns>
        protected string GetFilterCommand(string field, string value, int filterType) {
            switch (filterType) {
                case 1: // Igual a
                    return $"{field} = {value}";
                case 2: // Mayor a
                    return $"{field} > {value}";
                case 3: // Menor a
                    return $"{field} < {value}";
                default:
                    return "";
            }
        }
        /// <summary>
        /// Carga los datos de la tabla de productos de la base de datos en un control GridView. 
        /// </summary>
        /// <param name="filtrar">Indica si se deben aplicar filtros a la consulta SQL.</param>
        /// <remarks>
        /// Si el parámetro "filtrar" se establece en verdadero, se aplicarán filtros a la consulta SQL antes de cargar los datos en el control GridView. 
        /// Los filtros se aplicarán si los campos "IDProductoT" o "IDCategoriaT" no están vacíos. 
        /// </remarks>
        protected void cargarDatos(bool filtrar = false) {
            using (SqlConnection connection = new SqlConnection(Data.NEPTUNO)) {
                try {
                    connection.Open();
                    using (SqlCommand command = connection.CreateCommand()) {
                        string consulta = "SELECT [IdProducto] as ID, [NombreProducto] as Nombre, [IdCategoría] as [Categoría], [CantidadPorUnidad] as [Cantidad por Unidad], FORMAT([PrecioUnidad],'C', 'en-us') AS [Precio Unitario] FROM [Productos] ";
                        List<string> filtros = new List<string>();
                        if (filtrar) {
                            if (!string.IsNullOrEmpty(IDProductoT.Text)) {
                                filtros.Add(GetFilterCommand("[IdProducto]", IDProductoT.Text, int.Parse(IDProductoDDL.SelectedValue)));
                            }
                            if (!string.IsNullOrEmpty(IDCategoriaT.Text)) {
                                filtros.Add(GetFilterCommand("[IdCategoría]", IDCategoriaT.Text, int.Parse(IDCategoriaDDL.SelectedValue)));
                            }
                            if (filtros.Count > 0) {
                                consulta += " WHERE " + string.Join(" AND ", filtros);
                            }
                        }
                        command.CommandText = consulta;
                        using (SqlDataReader reader = command.ExecuteReader()) {
                            gvProductos.DataSource = reader;
                            gvProductos.DataBind();
                        }
                    }
                }
                catch (SqlException ex) {
                    // Manejar la excepción
                    MostrarMensaje("Error de SQL: " + ex.Message);
                }
                catch (Exception ex) {
                    // Manejar otras excepciones
                    Console.WriteLine("Error: " + ex.Message);
                }
                finally {
                    // Que la conexión se cierre siempre, incluso si hubo excepciones.
                    if (connection.State != ConnectionState.Closed) {
                        connection.Close();
                    }
                }
            }
        }


        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                cargarDatos();
            }
        }
        protected void BtnQuitarFiltros_Click(object sender, EventArgs e) {
            cargarDatos();
            IDProductoT.Text = "";
            IDCategoriaT.Text = "";
            IDProductoDDL.SelectedIndex = 0;
            IDCategoriaDDL.SelectedIndex = 0;
            MostrarMensaje("Se reiniciaron los filtros. ");
        }
        protected void BtnFiltrar_Click(object sender, EventArgs e) {
            cargarDatos(true);
        }
    }
}