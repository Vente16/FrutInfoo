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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
public class RegEmpleado extends HttpServlet {

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
            String Nombre = request.getParameter("nombres");
            String Apellido = request.getParameter("apellidos");
            String Telefono = request.getParameter("telefono");
            String Celular = request.getParameter("celular");
            String Direccion = request.getParameter("direccion");
            String Disponibilidad = request.getParameter("disponibilidad");
            String InicioC = request.getParameter("inicio");
            String FinC = request.getParameter("fin");
            String HoraI = request.getParameter("hora inicio");
            String HoraS = request.getParameter("hora salida");
            String Documento = request.getParameter("documento");
            String TipoD = request.getParameter("tipo");
            String FechaN = request.getParameter("fecha");
            String Correo = request.getParameter("email");

            Conexion c = new Conexion();
            Connection con = c.Conectar();

            PreparedStatement Ps = con.prepareStatement("INSERT INTO empleados (Nombre, Apellido, Telefono, celular, Direccion, Disponibilidad, inicio_contrato, Fin_contrato, Hora_inicio, Hora_salida, Documento, Tipo_documento, Fecha_nacimiento, correo, Habilitado) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,1)");
            Ps.setString(1, Nombre);
            Ps.setString(2, Apellido);
            Ps.setString(3, Telefono);
            Ps.setString(4, Celular);
            Ps.setString(5, Direccion);
            Ps.setString(6, Disponibilidad);
            Ps.setString(7, InicioC);
            Ps.setString(8, FinC);
            Ps.setString(9, HoraI);
            Ps.setString(10, HoraS);
            Ps.setString(11, Documento);
            Ps.setString(12, TipoD);
            Ps.setString(13, FechaN);
            Ps.setString(14, Correo);

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
