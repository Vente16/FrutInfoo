/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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
public class DetalleSolicitudInsumos extends HttpServlet {

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
            Connection con = c.Conectar();
            String sql = "SELECT * FROM solicitud_insumo INNER JOIN `puntos_ventas` ON solicitud_insumo.Id_Punto_venta = `puntos_ventas`.Id_punto_de_venta WHERE Id=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, Id);
            ResultSet rst = pst.executeQuery();
            
            while (rst.next()) {                
                out.println("<h4>nombre de insumo: "+ rst.getString("Nombre_insumo")+"</h4>");
                out.println("<h4>Cantidad: "+ rst.getString("Cantidad")+"</h4>");
                out.println("<h4>Punto de venta: "+ rst.getString("Nombre_municipio")+"</h4>");
                out.println("<h4>Autoriza: "+ rst.getString("Autorizar")+"</h4>");
                out.println("<h4>Fecha de solicitud: "+ rst.getString("Fecha_Solicitud")+"</h4>");
                out.println("<h4>Fecha de autorizacion: "+ rst.getString("Fecha_Autorizacion")+"</h4>");
            }
            
                      
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DetalleSolicitudInsumos.class.getName()).log(Level.SEVERE, null, ex);
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
