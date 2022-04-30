<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edits.aspx.cs" Inherits="FinanzasFamiliar.Edits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Edits.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
    <h2 class="title">Editar datos
    <!-- it's dangerous using target="_blank" o.o|| -->
    
    </h2>
    <br/>
            <asp:Button ID="Button1" runat="server" Text="Regresar" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Eliminar" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Actualizar" OnClick="Button3_Click" />

             
            
              <div class="page-wrapper">
                  <h2 class="title">Datos ingresos
    <!-- it's dangerous using target="_blank" o.o|| -->
    
    </h2>
            <asp:Label ID="Label1" runat="server" Text="Id : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="137px"></asp:TextBox>
    
            <asp:Label ID="Label3" runat="server" Text="Tipo"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Ingreso familiar</asp:ListItem>
                    <asp:ListItem>Ingreso individual</asp:ListItem>
                </asp:DropDownList>
            <asp:Label ID="Label4" runat="server" Text="Ingreso"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="114px"></asp:TextBox>
             <asp:Label ID="Label5" runat="server" Text="Mes"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="114px"></asp:TextBox>
                   <asp:Label ID="Label2" runat="server" Text="Fecha"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

                
                      <h2 class="title">Datos gastos
    <!-- it's dangerous using target="_blank" o.o|| -->
    
    </h2>
            <asp:Label ID="Label6" runat="server" Text="Id : "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="137px"></asp:TextBox>
    
            <asp:Label ID="Label7" runat="server" Text="Tipo"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Gasto familiar</asp:ListItem>
                    <asp:ListItem>Gasto individual</asp:ListItem>
                </asp:DropDownList>
            <asp:Label ID="Label8" runat="server" Text="Gasto"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="114px"></asp:TextBox>
             <asp:Label ID="Label9" runat="server" Text="Mes"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Width="114px"></asp:TextBox>
                   <asp:Label ID="Label10" runat="server" Text="Fecha"></asp:Label>
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>

</header>
<article>
    <div class="page-wrapper">
        <details>
            <summary>Lista de ingresos</summary>
            


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="796px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                    <asp:BoundField DataField="ingreso" HeaderText="ingreso" SortExpression="ingreso" />
                    <asp:BoundField DataField="mes" HeaderText="mes" SortExpression="mes" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString7 %>" SelectCommand="SELECT * FROM [Ingresos]" DeleteCommand="DELETE Ingresos WHERE Id = @ID" UpdateCommand="UPDATE Ingresos SET fecha = @fecha WHERE Id = @CODIGO
UPDATE Ingresos SET tipo = @tipo WHERE Id = @CODIGO
UPDATE Ingresos SET ingreso = @ingreso WHERE Id = @CODIGO
UPDATE Ingresos SET mes = @mes WHERE Id = @CODIGO">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="fecha" PropertyName="SelectedDate" />
                <asp:ControlParameter ControlID="TextBox1" Name="CODIGO" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="tipo" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox4" Name="ingreso" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="mes" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
                </details>
        <details>
            <summary>Lista de gastos</summary>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="796px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                    <asp:BoundField DataField="gasto" HeaderText="gasto" SortExpression="gasto" />
                    <asp:BoundField DataField="mes" HeaderText="mes" SortExpression="mes" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinanzasPConnectionString8 %>" SelectCommand="SELECT * FROM [Gastos]" DeleteCommand="DELETE Gastos WHERE Id = @ID" UpdateCommand="UPDATE Gastos SET fecha = @fecha WHERE Id = @CODIGO
UPDATE Gastos SET tipo = @tipo WHERE Id = @CODIGO
UPDATE Gastos SET gasto = @gasto WHERE Id = @CODIGO
UPDATE Gastos SET mes = @mes WHERE Id = @CODIGO">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="ID" PropertyName="Text" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="Calendar2" Name="fecha" PropertyName="SelectedDate" />
                <asp:ControlParameter ControlID="TextBox2" Name="CODIGO" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList2" Name="tipo" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox3" Name="gasto" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox6" Name="mes" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
            </details>
       

    </div>
</article>
<hr />

    </form>
</body>
</html>
