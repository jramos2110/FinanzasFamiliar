<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gastos1.aspx.cs" Inherits="FinanzasFamiliar.Gastos1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link href="CSS/Gastos.css" rel="stylesheet" />


    <a href="Ingresos.aspx">Ingresos.aspx</a>
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <div class="content">				
		<h1>Registro de gastos</h1>

		<form id="formulario">

		    <fieldset>
				<label>Gasto</label>
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
                    <asp:ListItem>Gasto familiar</asp:ListItem>
                    <asp:ListItem>Gasto individual</asp:ListItem>
                </asp:DropDownList>
			</fieldset>
            
            <fieldset id="Fecha">
                <label>Fecha</label>	
               <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC"></asp:Calendar>				
            </fieldset>

			<fieldset>
                
	
			<fieldset class="btns">
               
                
                <asp:Button ID="Button3" runat="server" Text="Registrar" OnClick="Button3_Click" />


			</fieldset>

        </form>
        <pre id="prueba">
        </pre>
    </div>
    <script src="js/main.js"></script>
</body>
</html>


<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString5 %>" InsertCommand="INSERT INTO Gastos (fecha,tipo,gasto,mes,usuario) VALUES (@fecha,@tipo,@gasto,@mes,@usuario)" SelectCommand="SELECT * FROM [Gastos]">
    <InsertParameters>
        <asp:ControlParameter ControlID="Calendar1" Name="fecha" PropertyName="SelectedDate" />
        <asp:ControlParameter ControlID="DropDownList1" Name="tipo" PropertyName="SelectedValue" />
        <asp:ControlParameter ControlID="TextBox1" Name="mes" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox2" Name="usuario" PropertyName="Text" />
        <asp:ControlParameter ControlID="Tingreso" Name="gasto" PropertyName="Text" />
    </InsertParameters>
    </asp:SqlDataSource>


    </form>
</body>
</html>
