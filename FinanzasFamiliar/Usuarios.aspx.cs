using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinanzasFamiliar
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = GetLogin.GetCorreo();
           



            SqlConnection conexion = new SqlConnection(@"DATA SOURCE=DESKTOP-PD7QNIA\JEANCA; Initial Catalog = FinanzasP; Integrated Security=True");


            SqlCommand Comand = new SqlCommand("SELECT COUNT (Correo) FROM loguser", conexion);
            conexion.Open();
            int contar = (int)Comand.ExecuteScalar();
            Label2.Text = "Cantidad de usuarios: " + contar.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if ((Label1.Text) == "Admin@gmail.com")
            {

                Response.Redirect("Administrador.aspx");
            }
            else
            {
                Response.Redirect("Home.aspx");

            }
            
        }
    }
}