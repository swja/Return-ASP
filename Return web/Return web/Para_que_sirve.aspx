<%@ Page Title="¿Para qué sirve?" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Para_que_sirve.aspx.cs" Inherits="Return_web.Para_que_sirve" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div align="center">
    <p>
        <br />
        <div align="center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large"  Height="25px" Text="¿PARA QUÉ SIRVE? "></asp:Label>   
        <br />
            <br />
    </div>           
        <div align="center">
                     
        <h4>¿PARA QUE SIRVE LA PÁGINA DE RECUPERACIÓN DE DOCUMENTOS PERDIDOS “RETURN” ? </h4>
            </div>
    <p>     
        <div align="justify">
            &nbsp;Cuándo una persona encuentra un documento personal como una cédula, papeleta de votación, etc. y no sabe cómo devolverla ahora puede registrala en el siguiente enlace:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://documentosextraviados.com" >Documentos Extraviados</asp:HyperLink>
            </div>
            </p>
    <div align="center">
                     
    </div>          
        <p>     
            <div align="justify">
            Ingresa a la página y en la opción INGRESO DE DOCUMENTOS, llena los campos que solicitados, luego da un click en registrar para que se grabe la información en la web y de esta manera la persona que los extravió tenga la facilidad de encontar su documento extraviado; Ingresando a la web "RETURN" y en la opción BÚSQUEDA DE DOCUMENTOS revise la información de quién posee sus documentos para poder contactarse con la persona que los encontró.<br />
                </p>
        </div>
    </div>
</asp:Content>
