<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="tp4.ej1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Ejercicio 1 · T.P. N.º 4</title>
    <meta name="description" content="
        Primer ejercicio del Trabajo Práctico N.º 4 para la materia Programación III. 
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
    <form class="agregarSucursal ejercicio1" id="form1" runat="server">
        <div class="flex-horizontal">
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="provinciaOrigen">Provincia de origen</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- DropDownList @DDL_Inicio_Provicia -->
                <asp:DropDownList ID="DDL_Inicio_Provicia" AutoPostBack="True" CssClass="mdc-text-field__input" OnSelectedIndexChanged="DDL_Inicio_Provicia_SelectedIndexChanged" aria-labelledby="provinciaOrigen" runat="server"></asp:DropDownList>
            </label>
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="localidadOrigen">Localidad de origen</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- DropDownList @DDL_Inicio_Localidad -->
                <asp:DropDownList ID="DDL_Inicio_Localidad" CssClass="mdc-text-field__input" aria-labelledby="localidadOrigen" runat="server"></asp:DropDownList>
            </label>
        </div>
        <br />
        <div class="flex-horizontal">
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="provinciaDestino">Provincia destino</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- DropDownList @DDL_Destino_Provicia -->
                <asp:DropDownList ID="DDL_Destino_Provicia" AutoPostBack="True" CssClass="mdc-text-field__input" aria-labelledby="provinciaDestino" runat="server" OnSelectedIndexChanged="DDL_Destino_Provicia_SelectedIndexChanged"></asp:DropDownList>
            </label>
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="localidadDestino">Localidad destino</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- DropDownList @DDL_Destino_Localidad -->
                <asp:DropDownList ID="DDL_Destino_Localidad" CssClass="mdc-text-field__input" aria-labelledby="localidadDestino" runat="server"></asp:DropDownList>
            </label>
        </div>
         <aside class="mdc-snackbar">
                <div class="mdc-snackbar__surface" role="status" aria-relevant="additions">
                    <div class="mdc-snackbar__label" aria-atomic="false"></div>
                </div>
            </aside>
    </form>
</body>
</html>
