<%@ Page Title="Autentificacion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Autentificacion.aspx.cs" Inherits="Return_web.Vistas.Autentificacion" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Atencion.</h3>
    <Autentificacion>
        Solo personal autorizado puede acceder a esta seccion, por favor ingrese sus credenciales.
    </Autentificacion>

    <div align=center>
        <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p></p>
        <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <p></p>
        <p>
            <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Red" Text="Usuario o Contraseña incorrecto." Visible="False"></asp:Label>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" Width="125px" />
    </div>
</asp:Content>