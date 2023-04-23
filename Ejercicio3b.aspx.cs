using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TrabajoPractico4 {
    public partial class Ejercicio3b : System.Web.UI.Page {
        private const string STRING_CONNECTION = @"Data Source=DESKTOP-G2NKNCB\SQLEXPRESS;Initial Catalog=Libreria;Integrated Security=True";
        protected DataSet dataset;
        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack) {
                string temaSeleccionado = Request.QueryString["tema"];
                using (SqlConnection connection = new SqlConnection(STRING_CONNECTION)) {
                    connection.Open();
                    using (SqlCommand command = connection.CreateCommand()) {
                        string consulta = "SELECT * FROM [Libros] WHERE [IdTema] = " + temaSeleccionado;
                        command.CommandText = consulta;
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command)) {
                            if (dataset == null) {
                                dataset = new DataSet();
                            }
                            adapter.Fill(dataset, "productos");
                            gvLibros.DataSource = dataset.Tables[0];
                            gvLibros.DataBind();
                        }
                    }
                }
            }
        }
    }
}