<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba</title>
        <link rel="stylesheet" href="CSS/estilo.css" type="text/css"/>
    </head>
    <body>
        <h1>
            Gestión de clientes 
        </h1>
        <div class="barra">
            <p>En este espacio podrás administrar la <br> información completa de tus usuarios y clientes</p>
        </div>

        <div class="datosClientes">

            <div class="cajaDatosCliente">
                <h2>
                    Datos de cliente
                </h2>
                <form action="svUsuarios" method="POST">
                    <p><label>Dni: </label><input type="text" name="dni" required></p>
                    <p><label>Nombre: </label><input type="text" name="nombre" required></p>
                    <p><label>Apellidos: </label><input type="text" name="apellidos" required></p>
                    <p><label>Teléfono: </label><input type="text" name="telefono" required></p>
                    <p><button type="submit">Enviar</button></p>
                </form>
            </div>

            <div class="cajaListaUsuarios">
                <h2>Ver lista de usuarios</h2>
                <p>Para ver los datos cargador haga clic en el siguiente botón: </p>
                <form action="svUsuarios" method="GET">
                    <button type="submit">Mostrar Usuarios </button>
                </form>
            </div>

            <div class="cajaEliminarUsuarios">
                <h2>Eliminar Usuarios</h2>
                <p>Ingrese el Id del usuario a Eliminar</p>
                <form action="svEliminarUsuario" method="POST">
                    <p><label>Id: <input type="text" name="id_usuario" required></label></p>
                    <button type="submite">Eliminar Usuario</button>
                </form>
            </div>
            

            <div class="cajaEditarUsuarios">
                <h2>Editar Usuario</h2>
                <p>Ingrese el Id del usuario a editar</p>
                <form action="svEditarUsuario" method="GET">
                    <p><label>Id: <input type="text" name="id_usuarioEditar" required></label></p>
                    <button type="submit ">Editar Usuario</button>
                </form>
            </div>
        </div>
    </body>
</html>
