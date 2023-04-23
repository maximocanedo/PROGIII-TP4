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
        private const string STRING_CONNECTION = @"Data Source=DESKTOP-G2NKNCB\SQLEXPRESS;Initial Catalog=Neptuno;Integrated Security=True";
        protected string getProductFilterCommand() {
            string val = IDProductoT.Text;
            int filtro = int.Parse(IDProductoDDL.SelectedValue);
            switch(filtro) {
                case 1: // Igual a
                    return "= " + val;
                case 2: // Mayor a
                    return "> " + val;
                case 3: // Menor a
                    return "< " + val;
            }
            return "";
        }
        protected string getCategoryFilterCommand() {
            string val = IDCategoriaT.Text;
            int filtro = int.Parse(IDCategoriaDDL.SelectedValue);
            switch (filtro) {
                case 1: // Igual a
                    return "= " + val;
                case 2: // Mayor a
                    return "> " + val;
                case 3: // Menor a
                    return "< " + val;
            }
            return "";
        }
        protected void cargarDatos(bool filtrar = false) {
            SqlConnection connection = new SqlConnection(STRING_CONNECTION);
            connection.Open();
            string consulta = "SELECT [IdProducto], [NombreProducto], [IdCategoría], [CantidadPorUnidad], [PrecioUnidad] FROM [Productos] ";
            bool seFiltraProducto = IDProductoT.Text != "";
            bool seFiltraCategoria = IDCategoriaT.Text != "";
            bool flt = filtrar && (seFiltraProducto || seFiltraCategoria);
            if (filtrar) {
                if (seFiltraProducto) {
                    consulta += " WHERE [IdProducto] " + getProductFilterCommand();
                }
                if(seFiltraCategoria) {                    
                    consulta += (seFiltraProducto? " AND " : " WHERE ") 
                        + "[IdCategoría] " + getCategoryFilterCommand();
                }
            }
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, connection);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "Productos");
            gvProductos.DataSource = dataset.Tables[0];
            gvProductos.DataBind();
            connection.Close();
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