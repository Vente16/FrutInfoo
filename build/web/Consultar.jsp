<%-- 
    Document   : Consultar
    Created on : 24-abr-2017, 10:22:58
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Modelo.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Consulta</title>
    </head>
    <body>
        <%
            
          try{
              
          Conexion c = new Conexion();
          Connection co = c.Conectar();
          
          String codigo = request.getParameter("Codigo");
          String cantidad = request.getParameter("Cantidad");
         

          PreparedStatement st = co.prepareStatement("SELECT *FROM productos WHERE Id_producto=?");
          st.setString(1, codigo);
          
          ResultSet rs = st.executeQuery();
          
          while(rs.next()){
          
         
          int cant = Integer.parseInt(cantidad);
          
          int valor = Integer.parseInt(rs.getString("Valor_producto"));

          int iva = 200;
          
          int Total = (cant*valor);
          
          int TotalP = Total+iva;
        
        %>
            
   
            <td class="id"><%= rs.getString("Id_producto")%></td>
            <td class="nombre"><%= rs.getString("Nombre_producto")%></td>
            <td class="cantidad"><%= cantidad%></td>
            <td class="valor"><%= rs.getString("Valor_producto")%></td>
            <td class="total"><%= Total%></td>
            <td class="iva"><%= iva%></td>
            <td class="costo"><%= TotalP%></td>
            <td><button class="glyphicon glyphicon-trash btn btn-danger Eliminar"></button></td>
            
  
            
            

     <%    } 

          }catch(Exception e){
     
            System.out.println(e);
        %>
        
        <div>No exixte ningún producto con ese código</div>
        
        <%
              }
        %>
        
        
    </body>
</html>
