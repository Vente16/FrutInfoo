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
 * @author ozkar
 */
public class FormActualizarLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        try(PrintWriter out = response.getWriter()) {
             String Id = request.getParameter("Id");
            
            Conexion c = new Conexion();
            Connection co = c.Conectar();
            
            PreparedStatement st = co.prepareStatement("SELECT * FROM login WHERE Id_login=?");
            st.setString(1, Id);
            
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
           
            out.println("<div'");
            out.println("<h4><span id='Nombre'>Nombre:"+ rs.getString("Nombre_usuario") +"</span></h4>");
            out.println("<form class='form-horizontal' id='ValFormActEmpl'>");
            out.println("<input type='hidden' name='Id' id='Id' value="+rs.getString("Id_login")+">");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-4' for='Contra'>Contraseña:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Contra' name='Contra' value="+rs.getString("Contraseña")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-4' for='Rol'>Rol:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Rol' name='Rol' value="+rs.getString("Rol")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("</form>");
            out.println("</div>");
          
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
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
