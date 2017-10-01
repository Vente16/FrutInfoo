<%-- 
    Document   : ListarTablas
    Created on : 27/09/2017, 07:58:57 PM
    Author     : ozkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
        <script src="js/FuncionesTablas.js"></script>
        <script  src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
    <main>
        <div class="container jumbotron">
            <h1>Tablas</h1>
            <table class="table table-hover">
                
                <thead>
                   <tr>
                       <%
                            ResultSet res = (ResultSet) session.getAttribute("consulta");
                            while (res.next()) {                                    
                                int ctd = 1;
                        %>
                    <th><%= res.getString(ctd)%></th>
                    <%
                       ctd =ctd+1;
                            }
                            
                        %>
                   </tr> 
                </thead>
                    

                    </table>
                    
            
        </div>
    </main>
    
    <%@include file="footerModulos.jspf" %>   
</body>
</html>

