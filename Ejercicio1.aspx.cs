using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace tp4
{
    public partial class ej1 : System.Web.UI.Page
    {
        protected void mostrarProvincias(DropDownList provincias, string consulta)
        { 
            SqlConnection cn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Viajes;Integrated Security=True");
            DataSet ds = new DataSet();
            cn.Open();
            SqlDataAdapter adpt = new SqlDataAdapter(consulta, cn);
            adpt.Fill(ds, "provincias");
            provincias.DataSource = ds.Tables["Provincias"];
            provincias.DataTextField = "NombreProvincia";
            provincias.DataValueField = "IdProvincia";
            provincias.DataBind();
            provincias.Items.Insert(0, new ListItem("--Seleccionar--", "--Seleccionar--"));
            cn.Close();
        }

        protected void mostrarLocalidades(DropDownList localidades, string consulta)
        {
            SqlConnection cn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Viajes;Integrated Security=True");
            DataSet ds = new DataSet();
            cn.Open();
            SqlDataAdapter adpt = new SqlDataAdapter(consulta, cn);
            adpt.Fill(ds, "localidades");
            localidades.DataSource = ds.Tables["Localidades"];
            localidades.DataTextField = "NombreLocalidad";
            localidades.DataValueField = "IdLocalidad";
            localidades.DataBind();
            localidades.Items.Insert(0, new ListItem("--Seleccionar--", "--Seleccionar--"));
            cn.Close();
        }

        protected void opcionPorDefecto(DropDownList lista, string texto)
        {
            lista.Items.Clear(); // Se borran todos los items.
            lista.Items.Insert(0, new ListItem(texto, texto)); // Se inserta el item en el índice 0.
        }

        protected void inicio()
        {
            // Muestro las provincias del destino inicio:
            string consultaSQL = "Select * from Provincias";
            mostrarProvincias(DDL_Inicio_Provicia, consultaSQL);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                inicio();
            }
        }

        protected void DDL_Inicio_Provicia_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DDL_Inicio_Provicia.SelectedValue != "--Seleccionar--")
            {
                // Muestro las localidades del destino de inicio seleccionado:
                int provicia = int.Parse(DDL_Inicio_Provicia.SelectedValue);
                string consultaSQL = "Select * from Localidades where [IdProvincia] = '" + (provicia) + "'";
                mostrarLocalidades(DDL_Inicio_Localidad, consultaSQL);

                // Muestro las provincias disponibles de la base de datos, excepto la provincia que se seleccionó como destino de inicio:
                string consultaSQL2 = "SELECT * FROM Provincias WHERE [IdProvincia] <> " + DDL_Inicio_Provicia.SelectedValue;
                mostrarProvincias(DDL_Destino_Provicia, consultaSQL2);

                // Muestro la opción por defecto en el DropDownList de las localidades de destino final:
                // (Esto es para que no figure ninguna localidad hasta que se seleccione una provincia como destino final,
                // y para que se borren las localidades de destino final, en caso de que se seleccione otra provincia como destino de inicio).
                opcionPorDefecto(DDL_Destino_Localidad, "--Seleccionar--");
            }
            else
            {
                // Si tiene seleccionada la opción por defecto, en los DropDownList de localidades (Destino Inicio), provincias (Destino Final) y
                // localidades (Destino Final), se borran los items y se muestra solamente la opción por defecto.
                opcionPorDefecto(DDL_Inicio_Localidad, "--Seleccionar--");
                opcionPorDefecto(DDL_Destino_Provicia, "--Seleccionar--");
                opcionPorDefecto(DDL_Destino_Localidad, "--Seleccionar--");
            }
        }

        protected void DDL_Destino_Provicia_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DDL_Destino_Provicia.SelectedValue != "--Seleccionar--")
            {
                // Muestro las localidades (Destino Final) disponibles de la base de datos, según la provincia seleccionada como Destino Final.
                string consultaSQL = "SELECT * FROM Localidades WHERE [IdProvincia] = " + DDL_Destino_Provicia.SelectedValue;
                mostrarLocalidades(DDL_Destino_Localidad, consultaSQL);
            }
            else
            {
                // Si se seleccionó la opción por defecto, en el DropDownList de localidades (Destino Final) se borran los items y figura solamente
                // la opción por defecto:
                opcionPorDefecto(DDL_Destino_Localidad, "--Seleccionar--");
            }
        }
    }
}
