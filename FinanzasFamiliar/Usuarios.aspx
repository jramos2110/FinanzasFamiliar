<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="FinanzasFamiliar.Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

      <link href="CSS/User.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
         <div class="wrapper">
      <h1 class="header">Usuario</h1>
      <center>
         <span class="continue">Usa tu usuario para registrar informacion..</span>
      </center>
      <div class="logged-in-user">
         <p>Seleccionar el usuario</p>
         <div class="accounts">
            <ol class="users-list">
               <li class="users-list-item">
                  <div class="avatar" style="background-image: url('https://i1.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png')">   
                  </div>
                  <div class="user-details">
                     <p>Invitado</p>
                     <p>Invitado</p>
                  </div>
               <li class="users-list-item">
                 <div class="avatar" style="background-image: url('https://i1.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png')">
                 </div>
                 <div class="user-details">
                 
                    <p> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                    <p> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
                     <p> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
                     <p> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p>
                     <asp:Button ID="Button2" runat="server" Text="Ingresar" OnClick="Button2_Click" />
                  </div>


                       </ol>
         </div>
      </div>
   </div>
</body>
</html>


    </form>
</body>
</html>
