using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;

namespace FinanzasFamiliar
{
    public partial class Modificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            else 
            { 
            
            
            }
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrador.aspx");
        }
        public void llenarGridFiltro()
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }
    }
}