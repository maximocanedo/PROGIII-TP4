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
        protected void inicio()
        {
            SqlConnection cn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Viajes;Integrated Security=True");
            DataSet ds = new DataSet();
            cn.Open();
            SqlDataAdapter adpt = new SqlDataAdapter("Select * from Provincias", cn);
            adpt.Fill(ds, "localidades");
            DDL_Inicio_Provicia.DataSource = ds.Tables["Localidades"];
            DDL_Inicio_Provicia.DataTextField = "NombreProvincia";
            DDL_Inicio_Provicia.DataValueField = "IdProvincia";
            DDL_Inicio_Provicia.DataBind();
            DDL_Inicio_Provicia.Items.Add("--Seleccionar--");
            DDL_Inicio_Provicia.SelectedIndex = 3;
            cn.Close();
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
            DDL_Inicio_Localidad.Items.Clear();
            int provicia = int.Parse(DDL_Inicio_Provicia.SelectedValue);
            SqlConnection cn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Viajes;Integrated Security=True");
            DataSet ds = new DataSet();
            cn.Open();
            SqlDataAdapter adpt = new SqlDataAdapter("Select * from [Localidades] where [IdProvincia] = '" + (provicia) + "'", cn);
            adpt.Fill(ds, "localidades");
            DDL_Inicio_Localidad.DataSource = ds.Tables[0];
            DDL_Inicio_Localidad.DataTextField = "NombreLocalidad";
            DDL_Inicio_Localidad.DataValueField = "IdLocalidad";
            DDL_Inicio_Localidad.DataBind();
            cn.Close();
        }
        
    }
}
