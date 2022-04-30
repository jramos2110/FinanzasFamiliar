<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinanzasFamiliar.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link href="CSS/Log.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 

   <link href="//db.onlinewebfonts.com/c/a4e256ed67403c6ad5d43937ed48a77b?family=Core+Sans+N+W01+35+Light" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="form.css" type="text/css">
<div class="body-content">
  <div class="module">
    <h1>Finanzas familiar -- Ingreso</h1>
      <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <form class="form" action="form.php" method="post" enctype="multipart/form-data" autocomplete="off">
      <div class="alert alert-error"></div>
        <asp:TextBox ID="Tnombre" placeholder="Nombre" runat="server"></asp:TextBox>
        <asp:TextBox ID="Tcorreo" placeholder="Correo" runat="server"></asp:TextBox>
        <asp:TextBox ID="Tcontra" placeholder="Contraseña" runat="server" TextMode="Password"></asp:TextBox>

       <asp:Label ID="Label1" runat="server" Text="Tienes cuenta ? "></asp:Label> <asp:Button ID="Button1" runat="server" Text="Registrarme" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Ingresar" OnClick="Button2_Click" />
    </form>
  </div>
</div>

    </form>
</body>
</html>
