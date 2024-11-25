<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Taller.aspx.cs" Inherits="SistemaLibros.vista.autor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Catalogo De Equipos</h2>
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />

            Codigo:
            <asp:TextBox ID="tcodigo" type="number" runat="server"></asp:TextBox>
            <br />
            <br />
            Nombre:
            <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
            <br />
            <br />
            Equipo:
            <asp:TextBox ID="tequipo" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="bagregar" runat="server" Text="Agregar" OnClick="bagregar_Click1" />

        </div>
    </form>
</body>
</html>
