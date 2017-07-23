/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
public class DetalleNovedad extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String id = request.getParameter("id");
            String metodo = request.getParameter("metodo");
            String documento = request.getParameter("documento");
            /* TODO output your page here. You may use following sample code. */
                Conexion c = new Conexion();
            Connection co = c.Conectar();
           
            switch(metodo){
                
                case "id":
               PreparedStatement st = co.prepareStatement("SELECT * FROM `novedades` "
                       + "INNER JOIN puntos_ventas ON novedades.Id_punto_venta = puntos_ventas.Id_punto_de_venta\n" +
               "INNER JOIN cargos ON novedades.Id_Cargo = cargos.id_cargo WHERE novedades.Id=?");
               st.setString(1, id);
           
               ResultSet rs = st.executeQuery();
           
            while(rs.next()){
                
            out.print("<h4>Documento: "+rs.getString("Documento")+"</h4><br>");
            out.print("<h4>Nombre del empleado: "+rs.getString("Nombre_empleado")+""+rs.getString("Apellidos")+"</h4><br>");
            out.print("<h4>Tipo de novedad: "+rs.getString("novedad")+"</h4><br>");
            out.print("<h4>Descripción: "+rs.getString("Descripcion")+"</h4><br>");
            out.print("<h4>Punto de venta: "+rs.getString("Nombre_municipio")+"</h4><br>");
            out.print("<h4>Cargo: "+rs.getString("Nombre_cargo")+"</h4><br>");
         
            }
            break;
            
            case "documento":
                
             PreparedStatement ps = co.prepareStatement("SELECT * FROM `novedades` "
                       + "INNER JOIN puntos_ventas ON novedades.Id_punto_venta = puntos_ventas.Id_punto_de_venta\n" +
               "INNER JOIN cargos ON novedades.Id_Cargo = cargos.id_cargo WHERE novedades.Documento=?");
               ps.setString(1, documento);
           
               ResultSet rt = ps.executeQuery();
           
            while(rt.next()){
              
                 out.print("<tr>");
            
            out.print("<td>"+rt.getString("Documento")+"</td>");
            out.print("<td>"+rt.getString("Nombre_Empleado")+"</td>");
            out.print("<td>"+rt.getString("novedad")+"</td>");
            out.print("<td><button class='btn btn-primary glyphicon glyphicon-eye-open ver' data-toggle='modal' data-target='#myModal' value='"+rt.getString("Id")+"'></button></td>");
            
            out.print("</tr>");
         
            }

                
                    
             
                break;
            
            }
            
            
            
            
        }catch(Exception e){
         
             System.out.println(e);
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
