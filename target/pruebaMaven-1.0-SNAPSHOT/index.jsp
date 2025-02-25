<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba</title>
    </head>
    <body>
        <h1>
            Datos de cliente
        </h1>
        <form action="svUsuarios" method="POST">
            <p><label>Dni</label><input type="text" name="dni"></p>
            <p><label>Nombre</label><input type="text" name="nombre"></p>
            <p><label>Apellidos</label><input type="text" name="apellidos"></p>
            <p><label>Teléfono</label><input type="text" name="telefono"></p>
            <p><button type="submit">Enviar</button></p>
        </form>
        <h1>Ver lista de usuarios</h1>
        <p>Para ver los datos cargador haga clic en el siguiente botón: </p>
        <form action="svUsuarios" method="GET">
            <button type="submit">Mostrar Usuarios </button>
        </form>
        
        <h1>Eliminar Usuarios</h1>
        <p>Ingrese el Id del usuario a Eliminar</p>
        <form action="svEliminarUsuario" method="POST">
            <p><label>Id: <input type="text" name="id_usuario"></label></p>
            <button type="submite">Eliminar Usuario</button>
        </form>
        
        <h1>Editar Usuario</h1>
        <p>Ingrese el Id del usuario a editar</p>
        <form action="svEditarUsuario" method="GET">
            <p><label>Id: </label><input type="text" name="id_usuarioEditar"></p>
            <button type="submit ">Editar Usuario</button>
        </form>
    </body>
</html>
