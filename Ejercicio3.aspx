<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TrabajoPractico4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Ejercicio 3 · T.P. N.º 4</title>
    <meta name="description" content="
        Tercer ejercicio (Primera página) del Trabajo Práctico N.º 4 para la materia Programación III. 
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
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet" />
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <!-- Archivos usados -->
    <link rel="icon" href="utn.ico" type="image/x-icon" />
    <link href="./styles.css" rel="stylesheet" />
    <script src="./index.js"></script>
</head>
<body>
    <form id="form1" class="agregarSucursal" runat="server">
        <br />
        <span class="mdc-typography--headline4">Librería</span>
        <br />
        <span class="mdc-typography--subtitle1">Seleccione un tema para continuar</span>
        <br />
        <br />
        <br />
        <div>
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="my-label-id3">Tema</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- DropDownList @ddlProvincias -->
                <asp:DropDownList ID="DropDownList1" CssClass="mdc-text-field__input" aria-labelledby="my-label-id3" runat="server"></asp:DropDownList>
            </label>
        </div>
        <br />
        <div>
            <asp:LinkButton ID="LinkButton1" CssClass="mdc-button mdc-button--raised" runat="server" OnClick="LinkButton1_Click">Ver libros</asp:LinkButton>
        </div>
    </form>
</body>
</html>
