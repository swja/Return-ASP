<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Return_web._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="boton" align="center">
                <h4>Por favor seleccione una de las siguientes opciones: 
                    </div>               
                    <asp:SqlDataSource ID="Cont_varios" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT count(*)
                         as 'Nmr. de documentos varios'
                        FROM            documentos
                        where id_tipo_doc='5'"></asp:SqlDataSource>
                </h4>
    <h4>
        <asp:SqlDataSource ID="Cont_matriculas" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) AS `Nmr. de matriculas` FROM documentos WHERE (id_tipo_doc = '4')"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Cont_licencias" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT count(*)
 as &quot;Nmr. de licencias&quot;
FROM            documentos

where id_tipo_doc='2'"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Contador" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) AS &quot;Nmr. de cedulas&quot; FROM documentos WHERE (id_tipo_doc = '1')"></asp:SqlDataSource>
        <asp:SqlDataSource ID="cont_papeletas" runat="server" ConnectionString="<%$ ConnectionStrings:webaplicación1ConnectionString %>" ProviderName="<%$ ConnectionStrings:webaplicación1ConnectionString.ProviderName %>" SelectCommand="SELECT count(*)
 as &quot;Nmr. papeletas de votación&quot;
FROM            documentos 

where id_tipo_doc='3'"></asp:SqlDataSource>
        <div id="contador" align="right">
    <div id="boton" align="center">
            <br />
            <asp:Button ID="Ingreso" runat="server" Text="Ingreso de documentos." ToolTip="Ingreso de documentos" OnClick="Ingreso_Click" Font-Size="Large" Height="44px" Width="276px"/>
            <br />
            <br />
            <asp:Button ID="Ingreso0" runat="server" Text="Búsqueda de documentos." ToolTip="Busqueda de documentos" OnClick="Ingreso0_Click" Font-Strikeout="False" Height="36px" Width="275px" Font-Size="Large"/>
            <br />
        </div>
        <br />

    <table border="1" align="center">
        <td>
            <asp:Label ID="Label1" runat="server" Text="Contador de Documentos Encontrados" BorderStyle="None" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="#000099"></asp:Label>
        </td>
    </table>
    <br />
    <br />
 <div text-align:center;>
    <table border="1" title="Contador de Documentos " align="center" >
        <tr>
            <td align="center" text-align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Contador" Height="16px" Width="190px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nmr. de cedulas" HeaderText="Nmr. de cedulas" SortExpression="Nmr. de cedulas" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td align="center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="Cont_licencias" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nmr. de licencias" HeaderText="Nmr. de licencias" SortExpression="Nmr. de licencias" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td align="center">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="cont_papeletas" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nmr. papeletas de votación" HeaderText="Nmr. papeletas de votación" SortExpression="Nmr. papeletas de votación" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td align="center">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="Cont_matriculas" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nmr. de matriculas" HeaderText="Nmr. de matrículas" SortExpression="Nmr. de matriculas" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td align="center">
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="Cont_varios" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nmr. de documentos varios" HeaderText="Nmr. de documentos varios" SortExpression="Nmr. de documentos varios" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
 </div>
            <br />
<asp:Label ID="Label2" runat="server" Text="Contador de visitas RETURN"></asp:Label>
    </h4>
    
        <a title="Contador de visitas RETURN"><img src="http://counter9.freecounter.ovh/private/contadorvisitasgratis.php?c=81612041d13839513af1dff9c7e3460e" border="0" title="Contador de visitas RETURN" alt="Contador de visitas RETURN" align="right"></a>
        </div>
    </div>
</asp:Content>
