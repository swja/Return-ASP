<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Return_web._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    

    

  

    <table> 
<tr> 
<td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Contador" Height="16px" Width="117px">
                    <Columns>
                        <asp:BoundField DataField="Nmr. de cedulas" HeaderText="Nmr. de cedulas" SortExpression="Nmr. de cedulas" />
                    </Columns>
                    </asp:GridView></td> 
    <td><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="Cont_licencias">
            <Columns>
                <asp:BoundField DataField="Nmr. de licencias" HeaderText="Nmr. de licencias" SortExpression="Nmr. de licencias" />
            </Columns>
        </asp:GridView>
        </td>
    <td>
           <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="cont_papeletas">
            <Columns>
                <asp:BoundField DataField="Nmr. papeletas de votación" HeaderText="Nmr. papeletas de votación" SortExpression="Nmr. papeletas de votación" />
            </Columns>
        </asp:GridView>
    </td>
</tr> 
</table>

    <div class="jumbotron">
        <h1>Bienvenido a Return </h1>
        <p class="lead">Recuperación de documentos extraviados</p>
        <p class="lead">
            <div align=center>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/MI.png" Width="105px" />
        </p>
        </div>
    </div>
                <h4>Por favor seleccione una de las siguientes opciones:
                    
    </h4>

        
        ddd
        
        ddd
       
   
    <h4>
        
        <asp:SqlDataSource ID="Cont_licencias" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT count(*)
 as &quot;Nmr. de licencias&quot;
FROM            documentos

where id_tipo_doc='3'"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Contador" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) AS &quot;Nmr. de cedulas&quot; FROM documentos WHERE (id_tipo_doc = '1')"></asp:SqlDataSource>
        <asp:SqlDataSource ID="cont_papeletas" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT count(*)
 as &quot;Nmr. papeletas de votación&quot;
FROM            documentos 

where id_tipo_doc='3'"></asp:SqlDataSource>
    </h4>
    <div class="row">
        <div class="col-md-4">

            <p>&nbsp;</p>
        </div>
        <div class="col-md-4">
            <br />
            <asp:Button ID="Ingreso" runat="server" BackColor="Black" BorderColor="Blue" BorderStyle="Inset" BorderWidth="5px" CssClass="alert" ForeColor="Lime" Height="68px" Text="Ingreso de documentos perdidos" ToolTip="Ingreso de documentos" Width="435px" Font-Size="Larger" OnClick="Ingreso_Click" />
            <br />
            <br />
            <asp:Button ID="Ingreso0" runat="server" BackColor="Black" BorderColor="Blue" BorderStyle="Inset" BorderWidth="5px" CssClass="alert" ForeColor="Lime" Height="66px" Text="Busqueda de documentos perdidos" ToolTip="Busqueda de documentos" Width="435px" Font-Size="Larger" OnClick="Ingreso0_Click" />
            <br />
        </div>
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
