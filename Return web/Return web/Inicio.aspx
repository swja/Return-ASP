<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Return_web.Ini" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="boton" align="center">
        <h4>
        Por favor seleccione una de las siguientes opciones: 
    </div>               
    <asp:SqlDataSource ID="Cont_varios" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT count(*) as 'Nmr. de documentos varios' FROM  documentos where id_tipo_doc='5'"></asp:SqlDataSource>
                
    <asp:SqlDataSource ID="conta_total" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="select count(*) as 'Documentos Totales' from documentos"></asp:SqlDataSource>
                </h4>
    <h4>
        <asp:SqlDataSource ID="Cont_matriculas" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT COUNT(*) AS `Nmr. de matriculas` FROM documentos WHERE (id_tipo_doc = '4')"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Cont_licencias" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT count(*) as &quot;Nmr. de licencias&quot; FROM  documentos where id_tipo_doc='2'"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Contador" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT COUNT(*) AS &quot;Nmr. de cedulas&quot; FROM documentos WHERE (id_tipo_doc = '1')"></asp:SqlDataSource>
        <asp:SqlDataSource ID="cont_papeletas" runat="server" ConnectionString="<%$ ConnectionStrings:consultaBuscar %>" ProviderName="<%$ ConnectionStrings:consultaBuscar.ProviderName %>" SelectCommand="SELECT count(*) as &quot;Nmr. papeletas de votación&quot; FROM   documentos where id_tipo_doc='3'"></asp:SqlDataSource>
        <div id="contador" align="center">
    <div id="boton" align="center">
        <br />
            <br />
            <asp:Button ID="Ingreso" runat="server" Text="Ingreso de documentos." ToolTip="Ingreso de documentos" OnClick="Ingreso_Click" Font-Size="Large" Height="44px" Width="277px"/>
            <br />
            <br />
            <asp:Button ID="Ingreso0" runat="server" Text="Búsqueda de documentos." ToolTip="Busqueda de documentos" OnClick="Ingreso0_Click" Font-Strikeout="False" Height="45px" Width="275px" Font-Size="Large"/>
                </div>
            <br />
            <br />
        <div id="salir" align="right">
           <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" href="~/Default.aspx" data-target="#myModal">
                Salir</button>

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" align="center">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Información</h4>
                        </div>
                        <div class="modal-body">
                            Muchas gracias por visitar y usar RETURN.
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Continuar" Width="160" Height="36" BackColor="#3399FF" ForeColor="White" />
                        </div>
                        
                    </div>
                </div>
            </div>
            </div>
            <br />
        <br />
           </div>
        <div align="center">
            <asp:Label ID="Label3" runat="server" Text="Contador de Documentos Encontrados" BorderStyle="None" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="#000099" align="center"></asp:Label>
        </div>
        <div id="tabla" align="center">              
    <br />
    <br />
 <div text-align:center;>
     <table border="1" title="Contador de Documentos " align="center">
         <tr>
             <td align="center" text-align="center">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Contador" Height="16px" Width="133px" CellPadding="4" ForeColor="#333333" GridLines="None">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="Nmr. de cedulas" HeaderText="Nmr. de Cédulas" SortExpression="Nmr. de cedulas" />
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
                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="Cont_licencias" CellPadding="4" ForeColor="#333333" GridLines="None" Width="123px">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="Nmr. de licencias" HeaderText="Nmr. de Lícencias" SortExpression="Nmr. de licencias" />
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
                 <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="cont_papeletas" CellPadding="4" ForeColor="#333333" GridLines="None" Width="197px">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="Nmr. papeletas de votación" HeaderText="Nmr. Papeletas de Votación" SortExpression="Nmr. papeletas de votación" />
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
                 <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="Cont_matriculas" CellPadding="4" ForeColor="#333333" GridLines="None" Width="137px">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="Nmr. de matriculas" HeaderText="Nmr. de Matrículas" SortExpression="Nmr. de matriculas" />
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
                 <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="Cont_varios" CellPadding="4" ForeColor="#333333" GridLines="None" Width="198px">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="Nmr. de documentos varios" HeaderText="Nmr. de Documentos Varios" SortExpression="Nmr. de documentos varios" />
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
             <td>
                 <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="conta_total" CellPadding="4" ForeColor="#333333" GridLines="None" Width="147px">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="Documentos Totales" HeaderText="Documentos Totales" SortExpression="Documentos Totales" />
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
            </div>
            <br />
        <div align="right">
<asp:Label ID="Label2" runat="server" Text="Contador de visitas RETURN"></asp:Label>
    </h4>
        <a title="Contador de visitas RETURN"><img src="http://counter9.freecounter.ovh/private/contadorvisitasgratis.php?c=81612041d13839513af1dff9c7e3460e" border="0" title="Contador de visitas RETURN" alt="Contador de visitas RETURN" align="right"></a>
    <br />
    <br />
</div>
</asp:Content>
