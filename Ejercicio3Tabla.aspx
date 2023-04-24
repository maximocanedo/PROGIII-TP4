<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3Tabla.aspx.cs" Inherits="TrabajoPractico4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br/>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Consultar otro tema</asp:LinkButton>
            <br />
        </div>
    </form>
</body>
</html>
