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
    public partial class Graficas : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-PD7QNIA\JEANCA;Initial Catalog=FinanzasP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            GrafCategorias();
            GrafIngresosmes();
            Datausuario();
            Gastostipo();
            Gastomes();
            Gastousuario();


            if (!IsPostBack)
            {


                SqlDataSource2.SelectCommand = "SELECT * FROM [Ingresos] WHERE IUsuario LIKE '%" + DropDownList1.SelectedValue + "%'";
                SqlDataSource2.DataBind();
            }
            else
            {


                SqlDataSource2.SelectCommand = "SELECT * FROM [Ingresos] WHERE IUsuario LIKE '%" + DropDownList1.SelectedValue + "%'";
                SqlDataSource2.DataBind();

            }


        }


        SqlConnection Conexion = new SqlConnection("Server=DESKTOP-PD7QNIA\\JEANCA;DataBase=FinanzasP;Integrated Security=true");
        SqlCommand cmd;
        SqlDataReader dr;

        ArrayList usuariosql = new ArrayList();
        ArrayList cant = new ArrayList();

        SqlConnection Conexion2 = new SqlConnection("Server=DESKTOP-PD7QNIA\\JEANCA;DataBase=FinanzasP;Integrated Security=true");
        SqlCommand cmd2;
        SqlDataReader dr2;
        ArrayList mes = new ArrayList();
        ArrayList cant2 = new ArrayList();

        SqlConnection Conexion3 = new SqlConnection("Server=DESKTOP-PD7QNIA\\JEANCA;DataBase=FinanzasP;Integrated Security=true");
        SqlCommand cmd3;
        SqlDataReader dr3;
        ArrayList user = new ArrayList();
        ArrayList cant3 = new ArrayList();


        SqlConnection Conexion4 = new SqlConnection("Server=DESKTOP-PD7QNIA\\JEANCA;DataBase=FinanzasP;Integrated Security=true");
        SqlCommand cmd4;
        SqlDataReader dr4;
        ArrayList tipo = new ArrayList();
        ArrayList cant4 = new ArrayList();


        SqlConnection Conexion5 = new SqlConnection("Server=DESKTOP-PD7QNIA\\JEANCA;DataBase=FinanzasP;Integrated Security=true");
        SqlCommand cmd5;
        SqlDataReader dr5;
        ArrayList mes5 = new ArrayList();
        ArrayList cant5 = new ArrayList();


        SqlConnection Conexion6 = new SqlConnection("Server=DESKTOP-PD7QNIA\\JEANCA;DataBase=FinanzasP;Integrated Security=true");
        SqlCommand cmd6;
        SqlDataReader dr6;
        ArrayList user6 = new ArrayList();
        ArrayList cant6 = new ArrayList();

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }

        private void GrafCategorias()
        {
            cmd = new SqlCommand("ProdporCategoria3", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            Conexion.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                usuariosql.Add(dr.GetString(0));
                cant.Add(dr.GetInt32(1));
            }
            Chart1.Series[0].Points.DataBindXY(usuariosql, cant);
            dr.Close();
            Conexion.Close();

        }

        private void GrafIngresosmes()
        {

            cmd2 = new SqlCommand("ProdporCategoria4", Conexion2);
            cmd2.CommandType = CommandType.StoredProcedure;
            Conexion2.Open();
            dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                mes.Add(dr2.GetString(0));
                cant2.Add(dr2.GetInt32(1));
            }
            Chart2.Series[0].Points.DataBindXY(mes, cant2);
            dr2.Close();
            Conexion2.Close();
        }

        private void Datausuario()
        {
            cmd3 = new SqlCommand("contarusuario", Conexion3);
            cmd3.CommandType = CommandType.StoredProcedure;
            Conexion3.Open();
            dr3 = cmd3.ExecuteReader();
            while (dr3.Read())
            {
                user.Add(dr3.GetString(0));
                cant3.Add(dr3.GetInt32(1));
            }
            Chart3.Series[0].Points.DataBindXY(user, cant3);
            dr3.Close();
            Conexion3.Close();

        }

        private void Gastostipo()

        {

            cmd4 = new SqlCommand("Gastostipo", Conexion4);
            cmd4.CommandType = CommandType.StoredProcedure;
            Conexion4.Open();
            dr4 = cmd4.ExecuteReader();
            while (dr4.Read())
            {
                tipo.Add(dr4.GetString(0));
                cant4.Add(dr4.GetInt32(1));
            }
            Chart4.Series[0].Points.DataBindXY(tipo, cant4);
            dr4.Close();
            Conexion4.Close();
        }

        private void Gastomes()

        {
            cmd5 = new SqlCommand("Gastosmes", Conexion5);
            cmd5.CommandType = CommandType.StoredProcedure;
            Conexion5.Open();
            dr5 = cmd5.ExecuteReader();
            while (dr5.Read())
            {
                mes5.Add(dr5.GetString(0));
                cant5.Add(dr5.GetInt32(1));
            }
            Chart6.Series[0].Points.DataBindXY(mes5, cant5);
            dr5.Close();
            Conexion5.Close();
        }

        private void Gastousuario()

        {
            cmd6 = new SqlCommand("Gastosusuario", Conexion6);
            cmd6.CommandType = CommandType.StoredProcedure;
            Conexion6.Open();
            dr6 = cmd6.ExecuteReader();
            while (dr6.Read())
            {
                user6.Add(dr6.GetString(0));
                cant6.Add(dr6.GetInt32(1));
            }
            Chart5.Series[0].Points.DataBindXY(user6, cant6);
            dr6.Close();
            Conexion6.Close();
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        public void llenarGridFiltro()
        {
            
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlDataSource2.SelectCommand = "SELECT * FROM [Ingresos] WHERE usuario LIKE '%" + DropDownList1.SelectedValue + "%'";
            SqlDataSource2.DataBind();
        }

       
    }
}