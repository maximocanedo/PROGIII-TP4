using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico4 {
    public partial class WebForm1 : System.Web.UI.Page {
        private readonly SqlConnection conexion = new SqlConnection(Data.LIBRERIA);
        public void MostrarMensaje(string mensaje) {
            string script = "MostrarMensaje('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "MostrarMensaje", script, true);
        }
        protected void Page_Load(object sender, EventArgs e) {
            if (IsPostBack == false) {
                try {
                    conexion.Open();
                    string consulta = "SELECT * FROM temas";
                    SqlCommand comando = new SqlCommand(consulta, conexion);
                    SqlDataReader reader = comando.ExecuteReader();
                    int index = 0;
                    while (reader.Read()) {
                        ListItem item = new ListItem(reader["Tema"].ToString(), reader["idtema"].ToString());
                        DropDownList1.Items.Insert(index, item);
                        index++;
                    }
                    reader.Close();
                } catch(SqlException sqlerr) {
                    MostrarMensaje("Error de SQL: " + sqlerr.Message);
                } catch(Exception err) {
                    MostrarMensaje("Error: " + err.Message);
                } finally {
                    conexion.Close();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e) {
            string dato = DropDownList1.SelectedValue;
            string urlRedireccion = "~/Ejercicio3Tabla.aspx" + "?dato=" + dato;
            Response.Redirect(urlRedireccion);
        }
    }
}