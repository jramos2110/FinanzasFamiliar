using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace FinanzasFamiliar
{
    public partial class Home : System.Web.UI.Page
    {

        SqlConnection Conexion2 = new SqlConnection("Server=DESKTOP-PD7QNIA\\JEANCA;DataBase=FinanzasP;Integrated Security=true");
        SqlCommand cmd;
        SqlDataReader dr;

        SqlConnection Conexion3 = new SqlConnection("Server=DESKTOP-PD7QNIA\\JEANCA;DataBase=FinanzasP;Integrated Security=true");
        SqlCommand cmd3;
        SqlDataReader dr3;




        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Correo: " + GetLogin.GetCorreo();
            sumaingresos();
            sumagastos();

            SqlConnection conexion = new SqlConnection(@"DATA SOURCE=DESKTOP-PD7QNIA\JEANCA; Initial Catalog = FinanzasP; Integrated Security=True");


            SqlCommand Comand = new SqlCommand("SELECT COUNT (tipo) FROM Ingresos", conexion);
            conexion.Open();
            int contar = (int)Comand.ExecuteScalar();
             Label2.Text = "Ingresos registrados: " +  contar.ToString();
            conexion.Close();

            SqlConnection conexion4 = new SqlConnection(@"DATA SOURCE=DESKTOP-PD7QNIA\JEANCA; Initial Catalog = FinanzasP; Integrated Security=True");


            SqlCommand Comand4 = new SqlCommand("SELECT COUNT (tipo) FROM Gastos", conexion4);
            conexion4.Open();
            int contar4 = (int)Comand4.ExecuteScalar();
            Label4.Text = "Ingresos registrados: " + contar4.ToString();
            conexion4.Close();


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        private void sumaingresos()
        {

            cmd = new SqlCommand("Sumaingreso", Conexion2);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter total = new SqlParameter("@toting", 0);
            total.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(total );
            Conexion2.Open();
            cmd.ExecuteNonQuery();
            Label3.Text = "Total de ingresos: " + cmd.Parameters["@toting"].Value.ToString();
            Conexion2.Close();

        }

        private void sumagastos()

        {
            cmd3 = new SqlCommand("Gastosuma", Conexion3);
            cmd3.CommandType = CommandType.StoredProcedure;
            SqlParameter total = new SqlParameter("@totgas", 0);
            total.Direction = ParameterDirection.Output;
            cmd3.Parameters.Add(total);
            Conexion3.Open();
            cmd3.ExecuteNonQuery();
            Label5.Text = "Total de gastos: " + cmd3.Parameters["@totgas"].Value.ToString();
            Conexion3.Close();

        }
    }
}