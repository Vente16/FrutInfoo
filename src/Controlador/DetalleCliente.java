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
 * @author User
 */
public class DetalleCliente extends HttpServlet {

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
            
            String Id = request.getParameter("Id");
            
            Conexion c = new Conexion();
            Connection co = c.Conectar();
            
             
            PreparedStatement st = co.prepareStatement("SELECT *FROM clientes WHERE Id=?");
            st.setString(1, Id);
            
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
          
            out.println("<h4><strong>Documento:</strong>  " +  rs.getString("Documento") + "   -- Tipo de documento: "+rs.getString("Tipo_documento")+"</h4>");
            out.println("<h4><strong>Nombre:</strong>  " + rs.getString("Nombre") + "</h4>");
            out.println("<h4><strong>Apellido:</strong> " + rs.getString("Apellido")+ "</h4>");
            out.println("<h4><strong>Telefóno:</strong> " + rs.getString("Telefono") + "</h4>");
            out.println("<h4><strong>Municipio:</strong> " + rs.getString("Municipio") + "</h4>");
            out.println("<h4><strong>Barrio:</strong> " + rs.getString("Barrio") + "</h4>");
            out.println("<h4><strong>Dirección:</strong> " + rs.getString("Direccion") + "</h4>");
            out.println("<h4><strong>Celular:</strong> " + rs.getString("Celular") + "</h4>");
            out.println("<h4><strong>Fecha de nacimiento:</strong> " + rs.getString("Fecha_nacimiento") + "</h4>");
            out.println("<h4><strong>Correo:</strong> " + rs.getString("Email") + "</h4>");  
            
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
