<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="logica.claseUsuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
        <link rel="stylesheet" href="CSS/estiloEditar.css" type="text/css">
    </head>
    <body>
        <%
            claseUsuario usu = (claseUsuario) request.getSession().getAttribute("usuEditar");
        %>
        <h1>Datos del usuario</h1>

        <div class="datosClientes">
            <form action="svEditarUsuario" method="POST">
                <p><label>Dni</label><input type="text" name="dni" value="<%=usu.getDni()%>"></p>
                <p><label>Nombre</label><input type="text" name="nombre" value="<%=usu.getNombre()%>"></p>
                <p><label>Apellidos</label><input type="text" name="apellidos" value="<%=usu.getApellidos()%>"></p>
                <p><label>Telefono</label><input type="text" name="telefono" value="<%=usu.getTelefono()%>"></p>
                <p><button type="submit">Actualizar</button></p>
            </form>
        </div>
    </body>
</html>
