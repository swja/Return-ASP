<%@ Page Title="Ingreso" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="Return_web.Vistas.Ingresar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <div align=center>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/MI.png" Height="96px" Width="171px" />
         </div>
    </h2>
    <h2>Ingreso de documentos extraviados.</h2>
    <h3><p>Por favor ingrese la siguiente informacion:</p></h3>
    <p>
        <asp:Label ID="Label12" runat="server" Font-Size="Large" ForeColor="Blue" Text="Información del documento encontrado."></asp:Label>
    </p>
    <p>
        
        <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Tipo de documento:"></asp:Label>
            
    </p>
    <p>
        
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Width="189px">
            <asp:ListItem>Cedula de identidad</asp:ListItem>
            <asp:ListItem>Licencia de conducir</asp:ListItem>
            <asp:ListItem>Papeleta de votación</asp:ListItem>
            <asp:ListItem>Matricula</asp:ListItem>
            <asp:ListItem>Varios</asp:ListItem>
        </asp:DropDownList>
            
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Cedula de identidad:" Font-Size="Large"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Nombres del documento encontrado:" Font-Size="Large"></asp:Label>
    </p>
    <p>
          <asp:TextBox ID="TextBox2" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Apellidos del documento encontrado:" Font-Size="Large"></asp:Label>
    </p>
    <p>
         <asp:TextBox ID="TextBox3" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Blue" Text="Datos de la persona que encontro el documento."></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Cedula de identidad:" Font-Size="Large"></asp:Label>
    </p>
    <p>
         <asp:TextBox ID="TextBox4" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Nombres:" Font-Size="Large"></asp:Label>
    </p>
    <p>
         <asp:TextBox ID="TextBox5" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Apellido:" Font-Size="Large"></asp:Label>
    </p>
    <p>
          <asp:TextBox ID="TextBox6" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" Text="Numero de contacto:" Font-Size="Large"></asp:Label>
    </p>
    <p>
          <asp:TextBox ID="TextBox7" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label10" runat="server" Text="Email de contacto:" Font-Size="Large"></asp:Label>
    </p>
    <p>
          <asp:TextBox ID="TextBox8" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label11" runat="server" Text="Fecha de registro:" Font-Size="Large"></asp:Label>

        <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Fecha del calendario"></asp:Label>

    </p>
    <p>
        &nbsp;</p>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar Información" />
    </p>
</asp:Content>

