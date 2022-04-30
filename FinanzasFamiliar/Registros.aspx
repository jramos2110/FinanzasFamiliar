<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="FinanzasFamiliar.Registros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link href="CSS/Login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        

<div class="login-container">
  <section class="login" id="login">
    <header>
      <h2>Finanzas familiar</h2>
      <h4>Registro</h4>

        <asp:Label ID="Label2" runat="server" Text="1"></asp:Label>
        
    </header>
    <form class="login-form" action="#" method="post">
      <asp:TextBox ID="Tcorreo" placeholder="Ingresar correo" required class="login-input" runat ="server"></asp:TextBox>
      <asp:TextBox ID="Tcontra" placeholder="Ingresar contraseña" required class="login-input" runat ="server" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="Tnombre" placeholder="Ingresar nombre" required class="login-input" runat="server"></asp:TextBox>
        <asp:TextBox ID="Tape" placeholder="Ingresar apellido" required class="login-input" runat="server"></asp:TextBox>

        <div class="submit-container">
      <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />

          
         
      </div>
    </form>
  </section>
   <asp:Button ID="Button2" runat="server" Text="Regresar" />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString %>" InsertCommand="INSERT INTO loguser (correo,contrasena,Nombres,Apellidos,Activo) VALUES (@correo,@contrasena,@Nombres,@Apellidos,@Activo)" SelectCommand="SELECT * FROM [loguser]" ProviderName="System.Data.SqlClient">
        <InsertParameters>
            <asp:ControlParameter ControlID="Tcorreo" Name="correo" PropertyName="Text" />
            <asp:ControlParameter ControlID="Tcontra" Name="contrasena" PropertyName="Text" />
            <asp:ControlParameter ControlID="Tnombre" Name="Nombres" PropertyName="Text" />
            <asp:ControlParameter ControlID="Tape" Name="Apellidos" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label2" Name="Activo" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
</div>


    </form>
</body>
</html>
