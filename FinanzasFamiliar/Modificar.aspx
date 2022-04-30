<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="FinanzasFamiliar.Modificar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="CSS/Modific.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        

<div class="wrapper">
	<div class="col uno">
		
		<div class="texto">
			<p><span>Usuarios</span> </p>
			<asp:Button ID="Button1" runat="server" Text="Regresar" OnClick="Button1_Click" />
			<ul class="bullets">
				</ul>
			
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="683px">
                <Columns>
                    <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" InsertVisible="False" ReadOnly="True" SortExpression="IdUsuario" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                    <asp:CheckBoxField DataField="Activo" HeaderText="Activo" SortExpression="Activo" />
                </Columns>
            </asp:GridView>

			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString23 %>" SelectCommand="SELECT [IdUsuario], [Nombres], [Apellidos], [correo], [Activo] FROM [loguser]" UpdateCommand="UPDATE loguser SET Activo = @Activo WHERE IdUsuario = @CODIGO
">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Activo" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="CODIGO" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>

			<br>
			<h3>Status</h3>
			<ul class="bullets">
			<li>Editar usuarios</li>
			<li>Modificar el status del usuario</li>
			
			<ul>
		</div>
	</div>
	<div class="col dos">
		<div>
    <h2> Ingresar datos del <span>Usuario</span></h2>
		</div>
			Id:<br>
			<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5" DataTextField="correo" DataValueField="IdUsuario"></asp:DropDownList>
			<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString22 %>" SelectCommand="Select IdUsuario ,correo from loguser"></asp:SqlDataSource>
			<br><br>
			Status:<br>
			 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Status" DataValueField="Id">
                    <asp:ListItem>Activo</asp:ListItem>
                    <asp:ListItem>Inactivo</asp:ListItem>
                </asp:DropDownList>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString19 %>" SelectCommand="Select Id ,Status from sta"></asp:SqlDataSource>
			</fieldset>
			<br><br>
		<asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" />
		</form>
    </div>
	</div>
</div>
    <div class="footer">
      Finanzas familiar | Usuarios registrados
    </div>


    </form>
</body>
</html>
