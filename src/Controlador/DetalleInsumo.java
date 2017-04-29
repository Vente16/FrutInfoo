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
public class DetalleInsumo extends HttpServlet {

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
            
            PreparedStatement st = co.prepareStatement("SELECT *FROM Insumos WHERE Id=?");
            st.setString(1, Id);
            
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
          
            out.println("<h4>Documento:  " +  rs.getString("Codigo") + "   -- Tipo de insumo: "+rs.getString("Tipo")+"</h4>");
            out.println("<h4>Nombre del insumo:  " + rs.getString("Nombre_insumo") + "</h4>");
            out.println("<h4>Cantidad insumo: " + rs.getString("Cantidad_insumo")+ "</h4>");
            out.println("<h4>Valor insumo: " + rs.getString("Valor_insumo") + "</h4>");
            out.println("<h4>Fecha de ingreso: " + rs.getString("Municipio") + "</h4>");
            out.println("<h4>Fecha de vencimiento: " + rs.getString("Fecha_ingreso") + "</h4>");
            out.println("<h4>Dirección: " + rs.getString("Fecha_vencimiento") + "</h4>");
            out.println("<h4>Peso: " + rs.getString("peso") + "</h4>");
            out.println("<h4>Fecha de nacimiento: " + rs.getString("Fecha de nacimiento") + "</h4>");
            out.println("<h4>Correo: " + rs.getString("Email") + "</h4>");  
            out.println("<h4>Membrecia: " + rs.getString("Membrecia") + "</h4>");
            
            }
            
            
            
            
            
        } catch(Exception e){
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
