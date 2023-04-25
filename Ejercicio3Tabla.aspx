<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3Tabla.aspx.cs" Inherits="TrabajoPractico4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Ejercicio 3 (Tabla) · T.P. N.º 4</title>
    <meta name="description" content="
        Tercer ejercicio (Segunda página) del Trabajo Práctico N.º 4 para la materia Programación III. 
        Universidad Tecnológica Nacional, Facultad Regional General Pacheco. 
        Repositorio disponible aquí:  https://github.com/maximocanedo/PROGIII-TP4" />
    <!-- Integrantes -->
    <meta name="author" content="Ezequiel Martínez" />
    <meta name="author" content="Javier Torales" />
    <meta name="author" content="Jean Pierre Esquén" />
    <meta name="author" content="María Olivia Hanczyc" />
    <meta name="author" content="Máximo Canedo" />
    <!-- Otras metaetiquetas útiles -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Librerías utilizadas -->
    <link href="./mdc/material-components-web.min.css" rel="stylesheet" />
    <script src="./mdc/material-components-web.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <!-- Archivos usados -->
    <link rel="icon" href="utn.ico" type="image/x-icon" />
    <link href="./styles.css" rel="stylesheet" />
    <script src="./index.js"></script>
</head>
<body>
    <form id="form1" class="agregarSucursal" runat="server">
        <br />
        <br />
        <br />
        <div>
            <div class="table-container">
                <asp:GridView ID="GridView1" CssClass="mdc-typography--body2" runat="server"></asp:GridView>
            </div>
            <br />
            <asp:LinkButton ID="LinkButton1" CssClass="mdc-button mdc-button--raised" runat="server" OnClick="LinkButton1_Click">Consultar otro tema</asp:LinkButton>
            <br />
        </div>
    </form>
</body>
</html>
