using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TrabajoPractico4 {
    public partial class Ejercicio3a : System.Web.UI.Page {
        private const string STRING_CONNECTION = @"Data Source=DESKTOP-G2NKNCB\SQLEXPRESS;Initial Catalog=Libreria;Integrated Security=True";
        protected DataSet dataset;
        public string temaSeleccionado;
        public void actualizarTemaSeleccionado() {
            temaSeleccionado = DDLTemas.SelectedValue;
            HLVerLibros.NavigateUrl = "~/Ejercicio3b.aspx?tema=" + temaSeleccionado;
        }
        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack) {
                using (SqlConnection connection = new SqlConnection(STRING_CONNECTION)) {
                    connection.Open();
                    using (SqlCommand command = connection.CreateCommand()) {
                        string consulta = "SELECT [IdTema], [Tema] FROM [Temas]";
                        command.CommandText = consulta;
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command)) {
                            if (dataset == null) {
                                dataset = new DataSet();
                            }
                            adapter.Fill(dataset, "productos");
                            DDLTemas.DataSource = dataset.Tables[0];
                            DDLTemas.DataTextField = "Tema";
                            DDLTemas.DataValueField = "IdTema";
                            DDLTemas.SelectedIndex = 0;
                            DDLTemas.DataBind();
                            actualizarTemaSeleccionado();
                        }
                    }
                }
            }
        }

        protected void DDLTemas_SelectedIndexChanged(object sender, EventArgs e) {
            actualizarTemaSeleccionado();
        }
    }
}