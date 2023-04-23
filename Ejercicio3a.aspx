<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3a.aspx.cs" Inherits="TrabajoPractico4.Ejercicio3a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>Seleccionar tema: </span>
            <asp:DropDownList ID="DDLTemas" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLTemas_SelectedIndexChanged"></asp:DropDownList>
            <br />
            <br />
            <asp:HyperLink ID="HLVerLibros" NavigateUrl="~/Ejercicio3b.aspx?tema=@temaSeleccionado" runat="server">Ver Libros</asp:HyperLink>
        </div>
    </form>
</body>
</html>
