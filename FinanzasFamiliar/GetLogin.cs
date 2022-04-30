using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinanzasFamiliar
{
    public class GetLogin
    {

        private static string Correo { get; set; }

        private static string Contrasena { get; set; }

        private static string Activo { get; set; }

        public static string GetCorreo()
        {
            return Correo;
        }
        public static void SetCorreo(string correo)
        {
            Correo = correo;
        }

        public static string GetContrasena()
        {
            return Contrasena;
        }
        public static void SetContrasena(string contrasena)
        {
            Contrasena = contrasena;
        }

        public static string GetActivo()
        {
            return Contrasena;
        }
        public static void SetActivo(string activo)
        {
            Activo = activo;
        }
    }
}