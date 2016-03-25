<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Return_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Bienvenido a Return </h1>
        <p class="lead">Recuperación de documentos extraviados</p>
        <p class="lead">
            <div align=center>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/MI.png" Width="105px" />
        </p>
        </div>
    </div>
                <h4>Por favor seleccione una de las siguientes opciones:</h4>
    <div class="row">
        <div class="col-md-4">

            <p>&nbsp;</p>
        </div>
        <div class="col-md-4">
            <br />
            <asp:Button ID="Ingreso" runat="server" BackColor="Black" BorderColor="Blue" BorderStyle="Inset" BorderWidth="5px" CssClass="alert" ForeColor="Lime" Height="68px" Text="Ingreso de documentos perdidos" ToolTip="Ingreso de documentos" Width="435px" Font-Size="Larger" />
            <br />
            <br />
            <asp:Button ID="Ingreso0" runat="server" BackColor="Black" BorderColor="Blue" BorderStyle="Inset" BorderWidth="5px" CssClass="alert" ForeColor="Lime" Height="66px" Text="Busqueda de documentos perdidos" ToolTip="Busqueda de documentos" Width="435px" Font-Size="Larger" />
            <br />
        </div>
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
