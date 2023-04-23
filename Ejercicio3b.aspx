<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3b.aspx.cs" Inherits="TrabajoPractico4.Ejercicio3b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Listado de libros</h3>
            <asp:GridView ID="gvLibros" runat="server"></asp:GridView>
            <br />
            <a href="./Ejercicio3a.aspx">Consultar otro tema</a>
        </div>
    </form>
</body>
</html>
