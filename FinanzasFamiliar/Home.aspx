<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinanzasFamiliar.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link href="CSS/Home.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
          

  <!-- Main container -->
  <main class="full-box main-container">
    <!--Barra lateral -->
    <section class="full-box nav-lateral">
      <div class="full-box nav-lateral-bg show-nav-lateral"></div>
      <div class="full-box nav-lateral-content">
        <figure class="full-box nav-lateral-avatar">
          <i class="far fa-times-circle show-nav-lateral"></i>
          <img src="https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/7_avatar-512.png" class="img-fluid" alt="Avatar">
          <figcaption class="roboto-medium text-center">
            <br></br> <br><small></small></br>
          </figcaption>
        </figure>
        <div class="full-box nav-lateral-bar"></div>
        <nav class="full-box nav-lateral-menu">
          <ul>
            <li>
              <a href="#"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Início</a>
            </li>

            <li>
              <a href="Ingresos.aspx" class="nav-btn-submenu"><i class="fas fa-users fa-fw"></i> &nbsp; Ingresos <i class="fas fa-chevron-down"></i></a>
              <ul>
                <li>
                  <a href="#"><i class="fas fa-plus fa-fw"></i> &nbsp; Novo usuario</a>
                </li>
                <li>
                  <a href="#"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de eventos</a>
                </li>
                <li>
                  <a href="#"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar usuario</a>
                </li>
              </ul>
            </li>

            <li>
              <a href="Gastos1.aspx" class="nav-btn-submenu"><i class="fas fa-store-alt fa-fw"></i> &nbsp; Gastos <i class="fas fa-chevron-down"></i></a>
              <ul>
                <li>
                  <a href="sala/sala-new.php"><i class="fas fa-plus fa-fw"></i> &nbsp; Nova sala</a>
                </li>
                <li>
                  <a href="Login.aspx"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; SALIR</a>
                </li>
                <li>
                  <a href="sala/sala-search.php"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar salas</a>
                </li>
              </ul>
            </li>

            <li>
              <a href="Modificar.aspx" class="nav-btn-submenu"><i class="far fa-address-card fa-fw"></i> &nbsp; Accesos <i class="fas fa-chevron-down"></i></a>
              <ul>
                <li>
                  <a href="Login.aspx"><i class="fas fa-plus fa-fw"></i> &nbsp; Nova reserva</a>
                </li>
                <li>
                  <a href="#"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Histórico de reservas</a>
                </li>
                <li>
									<a href="#"><i class="fas fa-search-dollar fa-fw"></i> &nbsp; Buscar reservas</a>
								</li>
								<li>
									<a href="#"><i class="fas fa-hand-holding-usd fa-fw"></i> &nbsp; Lista de eventos</a>
								</li>
              </ul>
            </li>

            <li>
              <a href="Login.aspx"><i class="fas fa-info-circle"></i> &nbsp; SALIR</a>

               
            </li>
          </ul>
        </nav>
      </div>
    </section>

    <!-- Page content -->
    <section class="full-box page-content">
      <nav class="full-box navbar-info">
        <a href="#" class="float-left show-nav-lateral">
          <i class="fas fa-exchange-alt"></i>
        </a>
        <a href="user/edit-perfil.php">
          <i class="fas fa-user-cog"></i>
        </a>
        <a href="#" class="btn-exit-system">
          <i class="fas fa-power-off"></i>
        </a>
      </nav>

      <!-- Page header -->
      <div class="full-box page-header">
        <h3 class="text-left">
          <i class="fab fa-dashcube fa-fw"></i> &nbsp; Início
        </h3>
        <p class="text-justify">

           

        </p>

           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      </div>

      <!-- Content -->
      <div class="full-box tile-container">

        <a href="Ingresos.aspx" class="tile">
          <div class="tile-tittle">Ingresos</div>
          <div class="tile-icon">
            <i class="fas fa-users fa-fw"></i>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
              

          </div>
        </a>

        <a href="Gastos1.aspx" class="tile">
          <div class="tile-tittle">Gastos</div>
          <div class="tile-icon">
            <i class="fas fa-store-alt fa-fw"></i>
               <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
              <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
          </div>
        </a>

        <a href="Graficas.aspx" class="tile">
          <div class="tile-tittle">Lista de eventos</div>
          <div class="tile-icon">
            <i class="far fa-address-card fa-fw"></i>
             

          </div>
        </a>

        <a href="Edits.aspx" class="tile">
          <div class="tile-tittle">Editar</div>
          <div class="tile-icon">
            <i class="fas fa-info-circle"></i>
              

          </div>
        </a>

      </div>

    </section>
  </main>
</body>

</html>



    </form>
</body>
</html>
