<%-- 
    Document   : DefUsarioInt
    Created on : 28/04/2017, 01:14:44 AM
    Author     : oscar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Modelo.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="header.jspf" %>
        <%Conexion c = new Conexion();
            Connection con = c.Conectar();

            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM empleados;");
            String nombre = "";
            String correo = "";
            if (rs.last()) {
                nombre = rs.getString(2);
                correo = rs.getString(17);
            }
        %>
        <section>
            <div class="container">
                <div class="jumbotron">
                    <h1>Registro de usuario</h1>
                    <p>has acabado de registrar a un cliente por favor crea un usuario</p>
                    <form action="RegUsuarioInt" class="form-group-sm">
                        <div class="form-group">
                            <label for="#nomre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" value="<%= nombre%>" name="nombre" >
                        </div>
                        <div class="form-group">
                            <label for="#correo">coreo</label>
                            <input type="text" class="form-control" id="correo" value="<%= correo%>" name="correo" >
                        </div>
                        <div class="form-group">
                            <label for="#usuario">usuario</label>
                            <input type="text" class="form-control" id="usuario" name="usuario" >
                        </div>
                        <div class="form-group">
                            <label for="#contra">contraseña</label>
                            <input type="text" class="form-control" id="contra" name="contra" >
                        </div>
                        <div class="form-group">
                            <select class="form-control" name="rol">
                                <option>Administrativo</option>
                                <option>Asistente Administrativo</option>
                                <option>Ventas</option>
                                <option>Insumos</option>
                                <option>Recursos humanos</option>
                            </select>
                        </div>
                       
                        <button type="submit" class="btn btn-primary">enviar</button>
                    </form>
                </div>
            </div>

        </section>

        <%@include file="footerModulos.jspf" %>
    </body>
</html>
