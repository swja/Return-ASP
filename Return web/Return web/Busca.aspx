<%@ Page Title="Busqueda" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Busca.aspx.cs" Inherits="Return_web.Vistas.Busca" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <br />
        <img alt="Logo" src="../Imagenes/MI.png" style="width: 171px; height: 96px" />
    </div>
    <h2>Búsqueda de documentos extraviados</h2>
    <p>&nbsp;</p>
    &nbsp;<asp:Label ID="Label2" runat="server" Text="Por favor según el tipo de búsqueda que desee realizar, ingrese la información requerida." Font-Size="Large"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Búsqueda por Cedula de Identidad " Font-Size="Large"></asp:Label>
    <br />
    <asp:TextBox ID="ced" runat="server" Width="247px" placeholder="Ingrese el número de cedula..." Height="29px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Red" Text="Por favor ingrese un criterio de búsqueda" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Búsqueda por Apellidos" Font-Size="Large"></asp:Label>
    <br />
    <asp:TextBox ID="ape" runat="server" Width="250px" placeholder="Ingrese el apellido a buscar..." Height="26px" OnTextChanged="cambio_busca"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Red" Text="Por favor ingrese un criterio de búsqueda" Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT tipo_documento.Tipo_doc as 'Tipo de documento', Cedula, concat( Nom_doc_encon,' ', Ape_doc_encon) AS 'Nombres del documento'
			, concat(Nom_pers_encon,' ', Ape_perso_encon) as 
            'Nombres quien encontró', Nmr_contacto as 'Teléfono  de contacto', Email_contacto as 
            'Email de contacto', comentario as 'Comentario'
            FROM documentos
            left join tipo_documento
            ON documentos.id_tipo_doc=tipo_documento.id_tipo_doc WHERE (Cedula = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ced" Name="Cedula" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <div align="center">
        <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Italic="True" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#CCFFFF" Text="Buscar" Width="214px" OnClick="Button1_Click" />
        &nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Italic="True" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#CCFFFF" Text="Nueva Búsqueda" Width="214px" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Size="Medium" Font-Underline="True" ForeColor="Blue" Text="Nota. - Si ningún elemento es mostrado al realizar su búsqueda, NO existe ningún registro que coincida con la misma." Visible="False"></asp:Label>
        <br />
        <div align="center">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" CellPadding="8" ForeColor="#333333" RowStyle-VerticalAlign="Middle" GridLines="Vertical" BorderStyle="Dashed" BorderWidth="3px" CellSpacing="2" Font-Size="Large" HorizontalAlign="Justify" AutoGenerateColumns="true">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" BorderStyle="Dotted" BorderWidth="2px" Font-Size="Large" HorizontalAlign="Right" VerticalAlign="Middle" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" BorderStyle="Dotted" VerticalAlign="Bottom" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                <%--
        <emptydatarowstyle backcolor="LightBlue"
          forecolor="Red"/>
        <emptydatatemplate>
          <asp:image id="NoDataImage"
            imageurl="~/Imagenes/MI.png"
            alternatetext="No Image" 
            runat="server"/>
            No se encontro información  
        </emptydatatemplate> --> --%>
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" CellPadding="8" ForeColor="#333333" RowStyle-VerticalAlign="Middle" GridLines="Vertical" BorderStyle="Dashed" BorderWidth="3px" CellSpacing="2" Font-Size="Large" HorizontalAlign="Justify">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" BorderStyle="Dotted" BorderWidth="2px" Font-Size="Large" HorizontalAlign="Right" VerticalAlign="Middle" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" BorderStyle="Dotted" VerticalAlign="Bottom" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                <%-- 
            <emptydatarowstyle backcolor="LightBlue"
          forecolor="Red"/>
        <emptydatatemplate>
          <asp:image id="NoDataImage"
            imageurl="~/Imagenes/MI.png"
            alternatetext="No Image" 
            runat="server"/>
            No se encontro información  
        </emptydatatemplate> 
                --%>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT COUNT(Ape_doc_encon) AS 'Registros Encontrados', concat( Nom_doc_encon,' ', Ape_doc_encon) AS 'Nombres del documento'
			, concat(Nom_pers_encon,' ', Ape_perso_encon) as 
            'Nombres quien encontró', Nmr_contacto as 'Teléfono  de contacto', Email_contacto as 
            'Email de contacto', comentario as 'Comentario'
            FROM documentos
            left join tipo_documento
            ON documentos.id_tipo_doc=tipo_documento.id_tipo_doc
             WHERE (Ape_doc_encon like ?) 
             GROUP BY Nom_doc_encon">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ape" Name="Ape_doc_encon" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br />
    <br />
    </div>
    <br />
</asp:Content>
