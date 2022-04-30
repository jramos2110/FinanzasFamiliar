using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanzasFamiliar
{
    public partial class Gastos1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mes = "";

            mes = Calendar1.SelectedDate.ToString("MM");
            TextBox1.Text = mes;

            TextBox2.Text = GetLogin.GetCorreo();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource4.Insert();
            Response.Redirect("Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "Admin@gmail.com")
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