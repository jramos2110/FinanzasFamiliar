<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graficas.aspx.cs" Inherits="FinanzasFamiliar.Graficas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Graficas.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <header>
    <h2 class="title">Comportamiento de datos 
    <!-- it's dangerous using target="_blank" o.o|| -->

    </h2>
    <br/>
            <asp:Button ID="Button1" runat="server" Text="Regresar" OnClick="Button1_Click" />
            
</header>
<article>
    <div class="page-wrapper">
        <details>
            <summary>Comportamiento de ingresos</summary>
            <asp:Chart ID="Chart1" runat="server" OnLoad="Chart1_Load" Palette="Fire" TextAntiAliasingQuality="Normal" BackColor="WhiteSmoke" BorderlineDashStyle="Solid" Width="794px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Bar" Color="Lime"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </details>
        <details>
            <summary>Ingresos por usuario</summary>
            <asp:Chart ID="Chart3" runat="server" Width="797px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </details>
        <details>
            <summary>Ingresos por mes</summary>
            <asp:Chart ID="Chart2" runat="server" Width="795px" Palette="SeaGreen">
                <Series>
                    <asp:Series Name="Series1" ChartType="Line" YValuesPerPoint="2" Palette="SeaGreen"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </details>
        <details>
            <summary>Comportamiento de gastos</summary>
            <asp:Chart ID="Chart4" runat="server" Width="795px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Bar" Color="Red"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </details>
        <details>
            <summary>Gastos por usuario</summary>
            <asp:Chart ID="Chart5" runat="server" Width="795px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </details>
        <details>
            <summary>Gastos por mes</summary>
            <asp:Chart ID="Chart6" runat="server" Width="795px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Line" Color="Red"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </details>
        <details>
            <summary>Ingresos por Usuario</summary>
            
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="correo" DataValueField="IdUsuario"></asp:DropDownList>
            
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString26 %>" SelectCommand="Select IdUsuario ,correo from loguser"></asp:SqlDataSource>

             <asp:Label ID="Label3" runat="server" Text="Tipo de ingreso: "></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Ingreso familiar</asp:ListItem>
                <asp:ListItem>Ingreso individual</asp:ListItem>
        </asp:DropDownList>

            <asp:GridView ID="GridView1" runat="server" Width="795px" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="IdIngreso" HeaderText="IdIngreso" InsertVisible="False" ReadOnly="True" SortExpression="IdIngreso" />
                    <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                    <asp:BoundField DataField="ingreso" HeaderText="ingreso" SortExpression="ingreso" />
                    <asp:BoundField DataField="mes" HeaderText="mes" SortExpression="mes" />
                </Columns>
        </asp:GridView>

           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString17 %>" SelectCommand="SELECT * FROM [Ingresos]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

           </details>
        <details>
        <summary>Gastos por Usuario</summary>
        <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

            <asp:Label ID="Label4" runat="server" Text="Tipo de gasto"></asp:Label>
            <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>

        <asp:GridView ID="GridView2" runat="server" Width="794px"></asp:GridView>
         <details>
    </div>
</article>
<hr />




    </form>
</body>
</html>
