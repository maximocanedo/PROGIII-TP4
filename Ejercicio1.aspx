<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TrabajoPractico4.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Origen: </h3>
        <br />
        <label for="ProvinciaInicio">
            <span>Provincia: </span>
            <br />
            <asp:DropDownList ID="ProvinciaInicio" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ProvinciaInicio_SelectedIndexChanged"></asp:DropDownList>
        </label>
        <br />
        <label for="LocalidadInicio">
            <span>Localidad: </span>
            <br />
            <asp:DropDownList ID="LocalidadInicio" runat="server" OnSelectedIndexChanged="LocalidadInicio_SelectedIndexChanged"></asp:DropDownList>
        </label>
        <br />
        <h3>Destino: </h3>
        <br />
        <label for="ProvinciaDestino">
            <span>Provincia: </span>
            <br />
            <asp:DropDownList ID="ProvinciaDestino" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ProvinciaDestino_SelectedIndexChanged"></asp:DropDownList>
        </label>
        <br />
        <label for="LocalidadDestino">
            <span>Localidad: </span>
            <br />
            <asp:DropDownList ID="LocalidadDestino" runat="server"></asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </label>
    </form>
</body>
</html>
