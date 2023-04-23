<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TrabajoPractico4.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>Id Producto: </span>
            <asp:DropDownList ID="IDProductoDDL" runat="server">
                <asp:ListItem Value="1">Igual a</asp:ListItem>
                <asp:ListItem Value="2">Mayor a</asp:ListItem>
                <asp:ListItem Value="3">Menor a</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="IDProductoT" runat="server"></asp:TextBox>
        </div>
        <div>
            <span>Id Categoría: </span>
            <asp:DropDownList ID="IDCategoriaDDL" runat="server">
                <asp:ListItem Value="1">Igual a</asp:ListItem>
                <asp:ListItem Value="2">Mayor a</asp:ListItem>
                <asp:ListItem Value="3">Menor a</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="IDCategoriaT" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" OnClick="BtnFiltrar_Click" />
            <asp:Button ID="BtnQuitarFiltros" runat="server" Text="Quitar filtros" OnClick="BtnQuitarFiltros_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            <asp:GridView ID="gvProductos" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
