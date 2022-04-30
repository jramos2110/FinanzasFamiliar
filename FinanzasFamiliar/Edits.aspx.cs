using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanzasFamiliar
{
    public partial class Edits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "Ingresos")
            {

                Label4.Text = "Ingreso";
            }
            else { Label4.Text = "Gasto"; }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            SqlDataSource2.Delete();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            SqlDataSource2.Update();
        }
    }
}