<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="FinanzasFamiliar.Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="CSS/Admin.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      
<header>
  <hgroup>
    <h1>Finanzas Familiar</h1>
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </hgroup>
</header>

<nav>
  <ul>
    <li><a class="brick dashboard" href="Modificar.aspx"><span class='icon ion-home'></span>Usuarios</a></li>
    <li><a class="brick pages" href="Ingresos.aspx"><span class='icon ion-document'></span>Ingresos</a></li>
    <li><a class="brick navigation" href="Gastos1.aspx"><span class='icon ion-android-share-alt'></span>Gastos</a></li>
    <li><a class="brick users" href="Edits.aspx"><span class='icon ion-person'></span>Editar</a></li>
    <li><a class="brick settings" href="Graficas.aspx"><span class='icon ion-gear-a'></span>Graficas</a></li>

      <aspGraficas</a></li>

    
  </ul>
</nav>

      <form>
        <textarea></textarea>
      </form>
    </hgroup>
  </div>


</div>

<footer>

</footer>



    </form>
</body>
</html>
