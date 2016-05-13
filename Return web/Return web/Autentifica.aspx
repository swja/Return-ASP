<%@ Page Title="Autentificación" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Autentifica.aspx.cs" Inherits="Return_web.Autentifica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2><%: Title %></h2>
    <h3>Atencion.</h3>
    <Autentificacion>
        Solo personal autorizado puede acceder a esta seccion, por favor ingrese sus credenciales.
    </Autentificacion>

    <div align=center>
        <p></p>
        <p>
        <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <p></p>
        <p>
            <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Red" Text="Usuario o Contraseña incorrecto." Visible="False"></asp:Label>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" Width="125px" />
    </div>
</asp:Content>
