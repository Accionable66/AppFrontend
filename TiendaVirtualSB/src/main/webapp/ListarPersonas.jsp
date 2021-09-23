<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registered Users</title>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script
        src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet"
        href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet"
        href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
    <script>
        
    var saveme =  $.ajax({
        type: "POST",
        url: "http://localhost:8080/listarPersonas", //nombre del archivo php que consultaremos.
      
        success: function(data) {
          $.each(data, function(i, item) {
          lista = document.getElementById("myTable");
          var tr = document.createElement("tr");
          var columna1 = document.createElement("th")
          columna1.innerHTML = item.cedulaUsuario;
          var columna2 = document.createElement("th")
          columna2.innerHTML = item.emailUsuario;
          var columna3 = document.createElement("th")
          columna3.innerHTML = item.nombreUsuario;
          var columna4 = document.createElement("th")
          columna4.innerHTML = item.password;
          var columna5 = document.createElement("th")
          columna5.innerHTML = item.usuario;
        
          lista.appendChild(tr);
          tr.appendChild(columna1);
          tr.appendChild(columna2);
          tr.appendChild(columna3);
          tr.appendChild(columna4);
          tr.appendChild(columna5);
       
         });
        }
      });
    
    </script>

    </head>
    <body>
    
    <table id="tabla">
<thead>
  <tr>
    <th>Identidad</th>
    <th>Correo</th>
    <th>Nombre Usuario</th>
    <th>Password</th>
    <th>Usuario</th>
    <th></th>

  </tr>
</thead>
<tbody id="myTable">
</tbody>
    
    </body>
    </html>