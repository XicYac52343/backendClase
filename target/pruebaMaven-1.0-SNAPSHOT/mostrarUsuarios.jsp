<%@page import="java.util.List"%>
<%@page import="logica.claseUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1>Lista de Usuarios registrados</h1>
        <% 
            List<claseUsuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int cont = 1;
            for(claseUsuario usu : listaUsuarios){
            
        %>
        <p><b>Usuario N° <%=cont%></b></p>
        <p>Id: <%=usu.getDni()%></p>
        <p>Nombre : <%=usu.getNombre()%></p>
        <p>Apellidos: <%= usu.getApellidos()%></p>
        <p>Telefono: <%=usu.getTelefono()%></p>
        <p>------------------------------------------</p>
       
        <%
                cont++;
            }
        %>
    </body>
</html>
