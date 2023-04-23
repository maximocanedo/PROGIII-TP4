using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TrabajoPractico4 {
    public partial class Ejercicio2 : System.Web.UI.Page {
        private const string STRING_CONNECTION = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Neptuno;Integrated Security=True";
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
        protected void cargarDatos(bool filtrar = false) {
            using (SqlConnection connection = new SqlConnection(STRING_CONNECTION)) {
                connection.Open();
                using (SqlCommand command = connection.CreateCommand()) {
                    string consulta = "SELECT [IdProducto], [NombreProducto], [IdCategoría], [CantidadPorUnidad], [PrecioUnidad] FROM [Productos] ";
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
        }


        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack) {
                cargarDatos();
            }
        }

        protected void BtnQuitarFiltros_Click(object sender, EventArgs e) {
            cargarDatos();
        }

        protected void BtnFiltrar_Click(object sender, EventArgs e) {
            cargarDatos(true);
        }
    }
}