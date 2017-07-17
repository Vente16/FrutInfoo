/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
public class RegistrarDomicilio extends HttpServlet {

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
        try {
            String Producto = request.getParameter("producto");
            String Cantidad = request.getParameter("cantidad");
            String Nombres = request.getParameter("nombres");
            String Apellidos = request.getParameter("apellidos");
            String Telefono = request.getParameter("telefono");
            String Celular = request.getParameter("celular");
            String Direccion = request.getParameter("direccion");

            Conexion c = new Conexion();
            Connection con = c.Conectar();

            PreparedStatement Ps = con.prepareStatement("INSERT INTO domicilio (producto, cantidad, nombres, apellidos, teléfono, celular, dirección) VALUES (?,?,?,?,?,?,?);");
            Ps.setString(1, Producto);
            Ps.setString(2, Cantidad);
            Ps.setString(3, Nombres);
            Ps.setString(4, Apellidos);
            Ps.setString(5, Telefono);
            Ps.setString(6, Celular);
            Ps.setString(7, Direccion);

            Ps.executeUpdate();

            response.sendRedirect("Exito.jsp");

            Ps.close();
            con.close();

        } catch (Exception e) {
            response.sendRedirect("Error.jsp");
            System.out.println(e);

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
