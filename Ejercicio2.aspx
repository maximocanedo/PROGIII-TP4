﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TrabajoPractico4.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ejercicio 2 · T.P. N.º 4</title>
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet" />
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link href="./styles.css" rel="stylesheet" />
    <script src="./index.js"></script>
</head>
<body>
    <form id="form1" class="agregarSucursal" runat="server">
        <div class="flex-horizontal">
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="my-label-id3">Filtro</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- DropDownList @ddlProvincias -->
                <asp:DropDownList ID="IDProductoDDL" CssClass="mdc-text-field__input" aria-labelledby="my-label-id3" runat="server">
                    <asp:ListItem Value="1">Igual a</asp:ListItem>
                    <asp:ListItem Value="2">Mayor a</asp:ListItem>
                    <asp:ListItem Value="3">Menor a</asp:ListItem>
                </asp:DropDownList>
            </label>
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="my-label-id1">ID Producto</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- TextBox @tbNombreSucursal -->
                <asp:TextBox ID="IDProductoT" CssClass="mdc-text-field__input" aria-labelledby="my-label-id1" runat="server"></asp:TextBox>
            </label>
        </div>
        <br />
        <div class="flex-horizontal">
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="my-label-id4">Filtro</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- DropDownList @IDCategoriaDDL -->
                <asp:DropDownList ID="IDCategoriaDDL" CssClass="mdc-text-field__input" aria-labelledby="my-label-id4" runat="server">
                    <asp:ListItem Value="1">Igual a</asp:ListItem>
                    <asp:ListItem Value="2">Mayor a</asp:ListItem>
                    <asp:ListItem Value="3">Menor a</asp:ListItem>
                </asp:DropDownList>
            </label>
            <label class="mdc-text-field mdc-text-field--outlined">
                <span class="mdc-notched-outline">
                    <span class="mdc-notched-outline__leading"></span>
                    <span class="mdc-notched-outline__notch">
                        <span class="mdc-floating-label" id="my-label-id6">ID Categoría</span>
                    </span>
                    <span class="mdc-notched-outline__trailing"></span>
                </span>
                <!-- TextBox @IDCategoriaT -->
                <asp:TextBox ID="IDCategoriaT" CssClass="mdc-text-field__input" aria-labelledby="my-label-id6" runat="server"></asp:TextBox>
            </label>
        </div>
        <br />
        <div class="flex-horizontal">
            <asp:LinkButton id="BtnFiltrar" class="mdc-button mdc-button--raised" runat="server" Text="Filtrar"  OnClick="BtnFiltrar_Click" UseSubmitBehavior="False"  ></asp:LinkButton>
            <asp:LinkButton ID="BtnQuitarFiltros" CssClass="mdc-button mdc-button--outlined" runat="server" Text="Quitar filtros" OnClick="BtnQuitarFiltros_Click" ></asp:LinkButton>
        </div>
        <br />
        <div class="table-container">
            <asp:GridView ID="gvProductos" CssClass="mdc-typography--body2" runat="server"></asp:GridView>
        </div>
        <div>
            <aside class="mdc-snackbar">
                <div class="mdc-snackbar__surface" role="status" aria-relevant="additions">
                    <div class="mdc-snackbar__label" aria-atomic="false"></div>
                </div>
            </aside>
        </div>
    </form>
</body>
</html>
