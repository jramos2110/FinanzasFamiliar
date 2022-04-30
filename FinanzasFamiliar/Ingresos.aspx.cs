using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;


namespace FinanzasFamiliar
{
    public partial class Ingresos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {


                Actualizar();
            }
            else
            {


                Actualizar();

            }


            TextBox2.Text = GetLogin.GetCorreo();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource3.Insert();
            Response.Redirect("Home.aspx");

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        public void Actualizar()
        {
            string mes = "";
            mes = Calendar1.SelectedDate.ToString("MM");
            TextBox1.Text = mes;

        }
    }
}