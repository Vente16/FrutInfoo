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
public class RegInsumo extends HttpServlet {

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

        try {
            String Cod = request.getParameter("codigo");
            String Pro = request.getParameter("provedor");
            String Tip = request.getParameter("tipo");
            String Pes = request.getParameter("peso");
            String Nom = request.getParameter("nombre");
            String Can = request.getParameter("cantidad");
            String Val = request.getParameter("valor");
            String FI = request.getParameter("fecha ingreso");
            String FV = request.getParameter("fecha vencimiento");
            String Pri = request.getParameter("prioridad");

            Conexion c = new Conexion();
            Connection con = c.Conectar();

            PreparedStatement Ps = con.prepareStatement("INSERT INTO insumos(Codigo, Provedor, Tipo, Peso, Nombre, Cantidad, Valor, Fecha_ingreso, Fecha_vencimiento,Prioridad)VALUES(?,?,?,?,?,?,?,?,?,?)");
            Ps.setString(1, Cod);
            Ps.setString(2, Pro);
            Ps.setString(3, Tip);
            Ps.setString(4, Pes);
            Ps.setString(5, Nom);
            Ps.setString(6, Can);
            Ps.setString(7, Val);
            Ps.setString(8, FI);
            Ps.setString(9, FV);
            Ps.setString(10, Pri);

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
