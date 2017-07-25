<%-- 
    Document   : ExcelEmpleados
    Created on : 23/07/2017, 07:41:07 AM
    Author     : John Jairo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Modelo.Conexion"%>
<%

    response.setContentType("application/vnd.ms-excel"); //Tipo de fichero.

    response.setHeader("Content-Disposition", "attachment;filename=\"report.xls\"");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excel Empleados</title>
    </head>
    <body>
         <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
        </style>
        
        <table>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th> 
                <th>Telefono</th>
                <th>Celular</th>
                <th>Dirección</th>
                <th>Disponibilidad</th>
                <th>Inicio Contrato</th>
                <th>Fin Contrato</th>
                <th>Hora Inicio</th>
                <th>Hora Salida</th>
            </tr>

            <%     
                Conexion c = new Conexion();
                Connection con = c.Conectar();

                try {
                    PreparedStatement st;
                    ResultSet rs;

                    st = con.prepareStatement("SELECT * FROM `empleados`   ");
                    rs = st.executeQuery();

                    while (rs.next()) {


            %>

            <tr>
            <td><%=rs.getString(2)%></td>
            <td><%= rs.getString(3)%></td>
            <td><%= rs.getString(4)%></td>
            <td><%= rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%= rs.getString(7)%></td>
            <td><%= rs.getString(8)%></td>
            <td><%= rs.getString(9)%></td>
            <td><%= rs.getString(10)%></td>
            <td><%= rs.getString(11)%></td>
            </tr>
            
            <%  }

                c.Conectar();

            } catch (Exception e) {
                System.out.println(e);

            %>

            <%                    }

            %>

        </table>

    </body>
</html>
