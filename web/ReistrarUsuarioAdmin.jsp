<%-- 
    Document   : ReistrarUsuarioAdmin
    Created on : 5/08/2017, 07:47:08 PM
    Author     : ozkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="footerModulos.jspf" %>
    <main>
        <div>
            <h1>Ingrese un usuario</h1>
        </div>
        
        <div>
            <form action="action">
                <div>
                    <label for="">nombre</label>
                    <input type="text" name="nombre" id="nombre" >
                </div>
                <div>
                    <label for="">Apellido</label>
                    <input type="text" name="apellido" id="apellido" >
                </div>
                <div>
                    <label for="">rol</label>
                    <input type="text" name="rol" id="rol" >
                </div>
                <div>
                    <label for="">correo</label>
                    <input type="text" name="correo" id="correo" >
                </div>
                <div>
                    <label for="">usuario</label>
                    <input type="text" name="usuario" id="usuario" >
                </div>
                <div>
                    <label for="">Contraseña</label>
                    <input type="text" name="Contra" id="Contra" >
                </div>
            </form>
        </div>
        
    </main>


    <%@include file="footer.jspf" %>
</body>
</html>
