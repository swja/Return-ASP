<%@ Page Title="Lista" Language="C#" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Return_web.Vistas.Lista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- funcion para no volver a atras -->
    <script type="text/javascript">
        function noBack(){
        window.history.forward()
        }
        noBack();
        window.onload= noBack;
        window.onpageshow=
        function(evt){ 
        if (evt.persisted) noBack()
        }
        window.onunload=
        function(){
            void (0)
        }
</script>
    <!-- funcion para no volver a atras -->
    <title></title>
 <!--<META HTTP-EQUIV="REFRESH" CONTENT="10; URL=Autentificacion.aspx">  PARA REDIRECCIONAR LA PAGINA DESPUES DE 10 SEG -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Button ID="Button2" runat="server" PostBackUrl="~/Inicio.aspx" Text="Volver a la pagina de Inicio" OnClick="Button2_Click" /> 
    <DIV ALIGN=center> <h2>Listado de Documentos Ingresados</h2>
        <p>
        </p>
        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Imagenes/MI.png" Width="122px" />
        <br />
    </DIV>
        
    
    </div>

        <div align=center>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="#" DataSourceID="llenado" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="#" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="#" />
                <asp:BoundField DataField="Tipo de documento" HeaderText="Tipo de documento" SortExpression="Tipo de documento" />
                <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                <asp:BoundField DataField="Nombres del documento" HeaderText="Nombres del documento" SortExpression="Nombres del documento" />
                <asp:BoundField DataField="#Ced quien encontro" HeaderText="#Ced quien encontro" SortExpression="#Ced quien encontro" />
                <asp:BoundField DataField="Nombres quien encontro" HeaderText="Nombres quien encontro" SortExpression="Nombres quien encontro" />
                <asp:BoundField DataField="Telefono de contacto" HeaderText="Telefono de contacto" SortExpression="Telefono de contacto" />
                <asp:BoundField DataField="Email de contacto" HeaderText="Email de contacto" SortExpression="Email de contacto" />
                <asp:BoundField DataField="Lugar donde encontro" HeaderText="Lugar donde encontro" SortExpression="Lugar donde encontro" />
                <asp:BoundField DataField="Fecha de registro en el sistema" HeaderText="Fecha de registro en el sistema" SortExpression="Fecha de registro en el sistema" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="llenado" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT id_doc AS `#`,tipo_documento.Tipo_doc as 'Tipo de documento', Cedula, concat( Nom_doc_encon,' ', Ape_doc_encon) AS 'Nombres del documento'
			, Ced_per_encon AS '#Ced quien encontro', concat(Nom_pers_encon,' ', Ape_perso_encon) as 
            'Nombres quien encontro', Nmr_contacto as 'Telefono de contacto', Email_contacto as 
            'Email de contacto', Lugar_encon as 'Lugar donde encontro', 
			 Fecha_registro as 'Fecha de registro en el sistema'

FROM            documentos
left join tipo_documento
ON documentos.id_tipo_doc=tipo_documento.id_tipo_doc"></asp:SqlDataSource>
    </form>
    
</body>
</html>
