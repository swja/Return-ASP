<%@ Page Title="Bienvenido" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bienvenido.aspx.cs" Inherits="Return_web.Presentacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" align="center">
        <h1>BIENVENIDO A RETURN </h1>
        <p class="lead">Recuperación de documentos extraviados</p>
        <div align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/MI.png" Width="307px" Height="205px" />
            <br />
            <p style="language: es; line-height: 90%; margin-top: 10.0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; text-align: center; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging">
                <span style="font-size: 17.0pt; font-family: Calibri; mso-ascii-font-family: Calibri; mso-fareast-font-family: +mn-ea; mso-bidi-font-family: +mn-cs; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: es; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%">La web que facilita la búsqueda y recuperación de los distintos documentos personales extraviados.</span>
            </p>
            <p style="language: es; line-height: 90%; margin-top: 10.0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; text-align: center; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging">
                &nbsp;
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" href="~/Inicio.aspx" data-target="#myModal">
                Ingresar
            </button>

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Consejo para el manejo de la web</h4>
                        </div>
                        <div class="modal-body">
                            Evite subir información falsa de la documentación encontrada; Al Ingresar a esta web y ponerla en uso acepta todas las condiciones establecidas por el Administrador de la Web de Recuperación de Documentos Perdidos 
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Continuar" Width="160" Height="36" BackColor="#3399FF" ForeColor="White" />
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
