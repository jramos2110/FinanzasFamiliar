<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingresos.aspx.cs" Inherits="FinanzasFamiliar.Ingresos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	 <link href="CSS/Ingresos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <div class="content">				
		<h1>Registro de ingresos</h1>

		<form id="formulario">

		    <fieldset>
				<label>Ingreso</label>
				<asp:TextBox ID="Tingreso" placeholder="Agregar ingresos" required runat ="server"></asp:TextBox>
            </fieldset>

			<fieldset>
				<label>Mes</label>
				<asp:TextBox ID="TextBox1" placeholder="Mes" required runat ="server"></asp:TextBox>
            </fieldset>
            
			<fieldset>
				<label>Usuario</label>
				<asp:TextBox ID="TextBox2" placeholder="Usuario" required runat ="server"></asp:TextBox>
            </fieldset>

			<fieldset>
                

				<label>Tipo</label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Ingreso familiar</asp:ListItem>
                    <asp:ListItem>Ingreso individual</asp:ListItem>
                </asp:DropDownList>
			</fieldset>
            
            <fieldset id="Fecha">
                <label>Fecha</label>	
               <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                   <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                   <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                   <OtherMonthDayStyle ForeColor="#999999" />
                   <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                   <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                   <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>				
            </fieldset>

			<fieldset>
                
	
			<fieldset class="btns">
				
                
                <asp:Button ID="Button3" class="reset" runat="server" Text="Regresar" OnClick="Button3_Click" />
                <asp:Button ID="Button1" class="boton" runat="server" Text="Guardar" OnClick="Button1_Click" />
			</fieldset>

        </form>
        <pre id="prueba">
        </pre>
    </div>
    <script src="js/main.js"></script>
</body>
</html>


<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString2 %>" InsertCommand="INSERT INTO Ingresos (fecha,tipo,ingreso,mes,usuario) VALUES (@fecha,@tipo,@ingreso,@mes,@usuario)" SelectCommand="SELECT * FROM [Ingresos]">
    <InsertParameters>
        <asp:ControlParameter ControlID="Calendar1" Name="fecha" PropertyName="SelectedDate" />
        <asp:ControlParameter ControlID="DropDownList1" Name="tipo" PropertyName="SelectedValue" />
        <asp:ControlParameter ControlID="Tingreso" Name="ingreso" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox1" Name="mes" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox2" Name="usuario" PropertyName="Text" />
    </InsertParameters>
    </asp:SqlDataSource>

    </form>
</body>
</html>
