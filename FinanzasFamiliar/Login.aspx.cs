using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinanzasFamiliar
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registros.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Registros.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            GetLogin.SetCorreo(Tcorreo.Text);
            GetLogin.SetContrasena(Tcontra.Text);



            String s = System.Configuration.ConfigurationManager.ConnectionStrings["FinanzasPConnectionString8"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);


            conexion.Open();

            SqlCommand comando = new SqlCommand("select correo, contrasena from loguser where correo = '" + GetLogin.GetCorreo() + "' " +
                "and contrasena = '" + GetLogin.GetContrasena() + "' and Activo = '1' ", conexion);
            SqlDataReader registro = comando.ExecuteReader();


            if (registro.Read())
            {
              
                    Response.Redirect("Usuarios.aspx");

                

            }
            else
            {
                Label2.Text = "Usuario o contraseña incorrectos";
            }
            conexion.Close();
        }

        

        
    }
}