using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TrabajoPractico4 {
    public partial class Ejercicio1 : System.Web.UI.Page {
        private const string SQL_CONNECTION_STRING = @"Data Source=DESKTOP-G2NKNCB\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True";
        private void SetProvincias(DropDownList provincias, int aEvitar = -1) {
            SqlConnection connection = new SqlConnection(SQL_CONNECTION_STRING);
            connection.Open();
            string consulta = aEvitar == -1 ?
                "SELECT * FROM [Provincias]" :
                "SELECT * FROM [Provincias] WHERE [IdProvincia] != '" + aEvitar + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, connection);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "provincias");
            provincias.DataSource = dataset.Tables["provincias"];
            provincias.DataTextField = "NombreProvincia";
            provincias.DataValueField = "IdProvincia";
            provincias.DataBind();
            provincias.Items.Insert(0, new ListItem("Seleccione provincia", "Seleccione provincia"));
            connection.Close();
        }
        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack) {
                SetProvincias(ProvinciaInicio);
            }
        }
        private void CambioDeProvincia(DropDownList provincia, DropDownList localidad) {
            int provinciaSeleccionada = int.Parse(provincia.SelectedValue);
            if (provinciaSeleccionada > 0) {
                SqlConnection connection = new SqlConnection(SQL_CONNECTION_STRING);
                connection.Open();
                string consulta = "SELECT * FROM [Localidades] WHERE [IdProvincia] = '" + (provinciaSeleccionada) + "'";
                // Label1.Text = consulta;
                SqlDataAdapter adapter = new SqlDataAdapter(consulta, connection);
                DataSet dataset = new DataSet();
                adapter.Fill(dataset, "Localidades");
                localidad.DataSource = dataset.Tables["Localidades"];
                localidad.DataTextField = "NombreLocalidad";
                localidad.DataValueField = "IdLocalidad";
                localidad.DataBind();
                localidad.Items.Insert(0, new ListItem("Seleccione localidad", "Seleccione localidad"));
                connection.Close();
            }

        }
        
        protected void ProvinciaInicio_SelectedIndexChanged(object sender, EventArgs e) {
            CambioDeProvincia(ProvinciaInicio, LocalidadInicio);
            if(ProvinciaInicio.SelectedIndex > 0) {
                SetProvincias(ProvinciaDestino, (ProvinciaInicio.SelectedIndex));
            }
        }

        protected void LocalidadInicio_SelectedIndexChanged(object sender, EventArgs e) {

        }

        protected void ProvinciaDestino_SelectedIndexChanged(object sender, EventArgs e) {
            CambioDeProvincia(ProvinciaDestino, LocalidadDestino);
        }
    }
}