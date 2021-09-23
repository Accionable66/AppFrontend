 <%@ page
    import="
        java.io.*,
        java.util.*,
        com.BO.TiendaVirtualSB.*,
        com.DTO.TiendaVirtualSB.*"
%>
<html>
<% 
    ClienteController cc=new ClienteController();
    ClienteVO cli=new ClienteVO();
    int id=Integer.parseInt(request.getParameter("idcliente"));
    cli.setnombreUsuario(request.getParameter("nombre"));
    cli.setcedulaUsuario(id);    
    cli.setemailUsuario(request.getParameter("apellido"));
    cc.eliminarPersona(cli);
%>
<head>
<title>Page Redirection</title>
</head>
<body>
    <h1>Using GET Method to Read Form Data</h1>
    <ul>
        <li><p>
                <b>First Name:</b>
                <%= request.getParameter("idcliente")%>
            </p></li>
        <li><p>
                <b>Last Name:</b>
                <%= request.getParameter("nombre")%>
            </p></li>
        <li><p>
                <b>Last Name:</b>
                <%= request.getParameter("apellido")%>
            </p></li>
    </ul>
</body>
</html>