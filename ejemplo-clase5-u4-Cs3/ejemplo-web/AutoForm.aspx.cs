using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace ejemplo_web
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlColores.Items.Add("Negro");
                ddlColores.Items.Add("Blanco");
                ddlColores.Items.Add("Rojo");
            }

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());

                List<Auto> temporal = (List<Auto>)Session["ListaAutos"];
                Auto seleccionado = temporal.Find(x => x.Id == id);

                TextBoxModelo.Text = seleccionado.Modelo;
                TextBoxId.Text = seleccionado.Id.ToString();
                TextBoxId.ReadOnly = true;
                ButtonAgregarAuto.Enabled = false;
            }else if (Request.QueryString["id"] == null)
            {
                ButtonModificarAuto.Enabled = false;
            }



        }

        protected void ButtonAgregarAuto_Click(object sender, EventArgs e)
        {
            Auto auto = new Auto();
            auto.Id = int.Parse(TextBoxId.Text);
            auto.Modelo = TextBoxModelo.Text;
            auto.Descripcion = TextBoxDescripcion.Text;
            auto.Color = ddlColores.SelectedValue;
            auto.Fecha = DateTime.Parse(TextBoxFecha.Text);
            auto.Usado = CheckBoxUsado.Checked;

            if (RadioButtonImportado.Checked)
            {
                auto.Importado = true;
            }
            else if (RadioButtonNacional.Checked)
            {
                auto.Importado = false;
            }

            ((List<Auto>)Session["ListaAutos"]).Add(auto);

            Response.Redirect("Default.aspx");

        }

        protected void RadioButtonImportado_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonModificar_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonModificarAuto_Click(object sender, EventArgs e)
        {
        }
    }
}