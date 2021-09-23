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
    //int id=Integer.parseInt(request.getParameter("idcliente"));
    cli.setusuario(request.getParameter("username"));
    //cli.setIdCliente(id);    
    cli.setpassword(request.getParameter("password"));
    if(cc.loginDePersonas(cli.getusuario(),cli.getpassword())){
    	
    	String s=cli.getemailUsuario();
        //System.out.println(""+s+"");
    	request.getSession().setAttribute("correo", s);
    	System.out.println(cli.getflag());
    	cli.setcedulaUsuario(cli.getcedulaUsuario());
    	if (cc.consultarPersona(cli.getusuario())){
    		response.sendRedirect("UsuarioActualiza.html");
    	}else{
    		response.sendRedirect("Login.html?mensaje=este usuario no se encuentra");
    	}
    } else {
    	response.sendRedirect("Login.html?mensaje=Usuario y/o Password incorrecto");
    	String mensaje="error";
    	request.getSession().setAttribute("correo", mensaje);
    }
    	
%>
<head>
<title>Page Redirection</title>
</head>
<body>
    <h1>Using GET Method to Read Form Data</h1>
    <ul>
        <li><p>
                <b>First Name:</b>
                //<%= request.getParameter("nombre")%>
                
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