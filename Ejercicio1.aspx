<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="tp4.ej1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ejercicio 1 · T.P. N.º 4</title>
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet" />
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link href="./styles.css" rel="stylesheet" />
    <script src="./index.js"></script>
</head>
<body>
    <header>
        <span class="title">Trabajo Práctico N.º 4</span>
        <a href="./Ejercicio1.aspx">Primer ejercicio</a>
        <a href="./Ejercicio2.aspx">Segundo ejercicio</a>
        <a href="./Ejercicio3.aspx">Tercer ejercicio</a>
        <div class="space"></div>
        <a href="https://github.com/maximocanedo/PROGIII-TP4">Repositorio</a>
        <a href="https://frgp.cvg.utn.edu.ar/mod/forum/view.php?id=255204">Foro</a>
    </header>
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
    </form>
</body>
</html>
