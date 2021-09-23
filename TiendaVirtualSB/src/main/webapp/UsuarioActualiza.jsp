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
    int id=Integer.parseInt(request.getParameter("cedula"));
    cli.setnombreUsuario(request.getParameter("usuario"));
    cli.setcedulaUsuario(id);    
    cli.setemailUsuario(request.getParameter("correo"));
    cli.setpassword(request.getParameter("contrasena"));
    cli.setusuario(request.getParameter("nombre"));
    String Id1="1";
    cli.setflag(Integer.parseInt(Id1)); 
    System.out.println(cli.getflag());
    cc.registrarPersona(cli);
    response.sendRedirect("Login.html");
    //if (cc.consultarPersona(cli.getusuario())){
	//	response.sendRedirect("navegacion.html");
	//}else{
	//	response.sendRedirect("Login.html");
	//}
    
%>
<head>
<title>Page Redirection</title>
</head>
<body>
    <h1>Using GET Method to Read Form Data</h1>
    <ul>
        <li><p>
                <b>First Name:</b>
                <%= request.getParameter("cedula")%>
            </p></li>
        <li><p>
                <b>Last Name:</b>
                <%= request.getParameter("usuario")%>
            </p></li>
        <li><p>
                <b>Last Name:</b>
                <%= request.getParameter("correo")%>
            </p></li>
        <li><p>
                <b>Last Name:</b>
                <%= request.getParameter("contrasena")%>
            </p></li>
        <li><p>
                <b>Last Name:</b>
                <%= request.getParameter("nombre")%>
            </p></li>
    </ul>
</body>
</html>