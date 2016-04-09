<%@ Page Title="Busqueda" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"CodeBehind="Busca.aspx.cs" Inherits="Return_web.Vistas.Busca" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
       <br />
       <img alt="Logo" src="../Imagenes/MI.png" style="width: 171px; height: 96px" /></div>
     <h2>Busqueda de documentos extraviados</h2>
    <p>&nbsp;</p>
    &nbsp;<asp:Label ID="Label2" runat="server" Text="Por favor segun el tipo de busqueda que desee realizar, ingrese la informacion requerida." Font-Size="Large"></asp:Label>
    
    <br />
    <br />
    
    <asp:Label ID="Label1" runat="server" Text="Busqueda por Cedula de Identidad" Font-Size="Large"></asp:Label>
    
    <br />
    <asp:TextBox ID="ced" runat="server" Width="247px" placeholder="Ingrese el número de cedula..." Height="29px"></asp:TextBox>
    <br />
    <br />
    
    <asp:Label ID="Label3" runat="server" Text="Busqueda por Apellidos" Font-Size="Large"></asp:Label>
    
    <br />
    <asp:TextBox ID="ape" runat="server" Width="250px" placeholder="Ingrese los dos apellidos a buscar..." Height="26px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Por favor para asegurar la busqueda despues del apellido inserte el caracter %" Font-Size="Large"></asp:Label>
    
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT DISTINCT Ape_doc_encon AS Apellidos, Nom_doc_encon AS Nombres, COUNT(*) AS 'Registros Encontrados' FROM documentos WHERE (Cedula = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ced" Name="Cedula" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <div align="center">
    <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Italic="True" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#CCFFFF" Text="Buscar" Width="214px" OnClick="Button1_Click" />
    &nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Italic="True" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#CCFFFF" Text="Nueva Busqueda" Width="214px" OnClick="Button2_Click" />
        <br />
        <br />
    <div align="center">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" CellPadding="8" ForeColor="#333333"  RowStyle-VerticalAlign="Middle" GridLines="Vertical"  BorderStyle="Dashed" BorderWidth="3px" CellSpacing="2" Font-Size="Large" HorizontalAlign="Justify">
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
    </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" CellPadding="8" ForeColor="#333333"  RowStyle-VerticalAlign="Middle" GridLines="Vertical"  BorderStyle="Dashed" BorderWidth="3px" CellSpacing="2" Font-Size="Large" HorizontalAlign="Justify">
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT DISTINCT Ape_doc_encon AS Apellidos, Nom_doc_encon AS Nombres, COUNT(*) AS 'Registros Encontrados' FROM documentos WHERE (Ape_doc_encon LIKE ?) GROUP BY Cedula">
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
