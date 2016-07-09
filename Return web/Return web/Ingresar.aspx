<%@ Page Title="Ingreso" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="Return_web.Vistas.Ingresar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <div align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Logo Return.png" Height="96px" Width="171px" />
        </div>
    </h2>
    <h2>Ingreso de documentos extraviados.</h2>
    <h3>
        <p>Por favor ingrese la siguiente informacion y no deje vacios los campos con *:</p>
        <asp:Label ID="Label15" runat="server" Font-Size="Large" ForeColor="Red" Text="Por favor verifique que todos los campos con * estén llenos." Visible="False"></asp:Label>
    </h3>
    <p>
        <asp:Label ID="Label12" runat="server" Font-Size="Large" ForeColor="Blue" Text="Información del documento encontrado."></asp:Label>
    </p>
    <p>

        <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Tipo de documento:"></asp:Label>

    </p>
    <p>

        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Width="189px">
            <asp:ListItem Value="1">Cedula de identidad</asp:ListItem>
            <asp:ListItem Value="2">Licencia de conducir</asp:ListItem>
            <asp:ListItem Value="3">Papeleta de votación</asp:ListItem>
            <asp:ListItem Value="4">Matricula</asp:ListItem>
            <asp:ListItem Value="5">Varios</asp:ListItem>
        </asp:DropDownList>

    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Cedula de identidad:" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Width="177px" placeholder="Solo 10 dígitos sin (-)" ToolTip="Ingrese solo 10 dígitos sin (-)"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Nombres del documento encontrado: *" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Width="177px" ValidateRequestMode="Enabled"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Apellidos del documento encontrado: *" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server" Width="177px" ValidateRequestMode="Enabled"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Blue" Text="Datos de la persona que encontró el documento."></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Cedula de identidad:" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server" Width="177px" placeholder="Solo 10 dígitos sin (-)" ToolTip='placeholder="Solo 10 dígitos sin (-)"'></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Nombres: *" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox5" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Apellidos: *" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox6" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" Text="Número de contacto:  *" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox7" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label10" runat="server" Text="Email de contacto:" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox8" runat="server" Width="177px" TextMode="Email"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label14" runat="server" Text="Ciudad dónde encontró el documento:" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox9" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label16" runat="server" Text="Observación:" Font-Size="Large"></asp:Label>

    </p>
    <p>
        <asp:TextBox ID="TextBox10" runat="server" Height="125px" placeholder="Si selecciono como tipo de documento Varios, por favor especifique en esta sección que tipo de documento es o especifique la ubicación exacta donde encontro el documento. Ej. Hospital Vaca Ortiz" TextMode="MultiLine" Width="343px"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="Label11" runat="server" Text="Fecha de registro:" Font-Size="Large"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Fecha del calendario"></asp:Label>

    </p>
    <p>
        &nbsp;
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar Información" Height="34px" Width="304px" />
    </p>
</asp:Content>

