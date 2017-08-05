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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ozkar
 */
public class ActualizarEmpleado extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          
           String id =request.getParameter("Id");
           String Documento =request.getParameter("Documento");
           String TipoDoc =request.getParameter("TipoDoc");
           String Nombre =request.getParameter("Nombre");
           String Apellido =request.getParameter("Apellido");
           String Telefono =request.getParameter("Telefono");
           String Celular =request.getParameter("Celular");
           String Inicon =request.getParameter("Inicon");
           String Fincon =request.getParameter("Fincon");
           String FechaN =request.getParameter("FechaN");
           String Correo =request.getParameter("Correo");
           
           Conexion con= new Conexion();
            Connection conn = con.Conectar();
            
           
            String sql= "UPDATE empleados SET Nombre=?, Apellido=?, Telefono=?, celular=?, Inicio_contrato=?, "
                    + "Fin_contrato=?, Documento=?, Tipo_documento=?, Fecha_nacimiento=?, Correo=? WHERE id_empleado=? ";
                    
            
            PreparedStatement pst =conn.prepareStatement(sql);
            
            pst.setString(1, Nombre);
            pst.setString(2, Apellido);
            pst.setString(3, Telefono);
            pst.setString(4, Celular);
            pst.setString(5, Inicon);
            pst.setString(6, Fincon);
            pst.setString(7, Documento);
            pst.setString(8, TipoDoc);
            pst.setString(9, FechaN);
            pst.setString(10, Correo);
            pst.setString(11, id);
            
            pst.executeUpdate();
            
            out.println("<h4>Se actualizo correctamente</h4>");
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ActualizarEmpleado.class.getName()).log(Level.SEVERE, null, ex);
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
