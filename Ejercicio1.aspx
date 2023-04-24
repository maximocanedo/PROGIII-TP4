<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ej1.aspx.cs" Inherits="tp4.ej1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 58px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 51px;
        }
        .auto-style5 {
            height: 58px;
            width: 153px;
        }
        .auto-style6 {
            width: 153px;
        }
        .auto-style7 {
            height: 26px;
            width: 153px;
        }
        .auto-style8 {
            height: 51px;
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td aria-autocomplete="none" aria-orientation="horizontal" class="auto-style5">
                <u>Destino de inicio</u></td>
            <td aria-orientation="horizontal" class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style7">Provincia:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDL_Inicio_Provicia" runat="server" Width="205px" AutoPostBack="True" OnSelectedIndexChanged="DDL_Inicio_Provicia_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Localidad:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDL_Inicio_Localidad" runat="server" Width="205px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><u>Destino final</u></td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Provincia:</td>
            <td>
                <asp:DropDownList ID="DDL_Destino_Provicia" runat="server"  Width="205px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Localidad:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDL_Destino_Localidad" runat="server" Width="205px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
