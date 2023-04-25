<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3Tabla.aspx.cs" Inherits="TrabajoPractico4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ejercicio 3 (Tabla) · T.P. N.º 4</title>
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet" />
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
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
