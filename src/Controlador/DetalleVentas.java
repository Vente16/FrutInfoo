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
import java.sql.PreparedStatement;
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
public class DetalleVentas extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String Id = request.getParameter("Id");
            
            Conexion con = new Conexion();
            Connection conn =con.Conectar();
            String sql = "SELECT * FROM ventas WHERE id=?";
            PreparedStatement pst =conn.prepareStatement(sql);
            pst.setString(1, Id);
            
            ResultSet rst = pst.executeQuery();
            
            while (rst.next()) {                
                out.println("<h3><strong>Producto:</strong> "+rst.getString("Nombe_producto")+"</h3>");
                out.println("<h3><strong>Cantidad:</strong> "+rst.getString("Cantidad_producto")+"</h3>");
                out.println("<h3><strong>Precio:</strong> "+rst.getString("Precio_unit")+"</h3>");
                out.println("<h3><strong>Iva:</strong> "+rst.getString("Iva")+"</h3>");            
                out.println("<h3><strong>Total a pagar:</strong> "+rst.getString("Total_Pagar")+"</h3>");
                out.println("<h3><strong>Tipo de venta:</strong> "+rst.getString("Tipo_venta")+"</h3>");
                out.println("<h3><strong>Fecha:</strong> "+rst.getString("Fecha_venta")+"</h3>");
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(DetalleVentas.class.getName()).log(Level.SEVERE, null, ex);
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
