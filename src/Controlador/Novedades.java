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
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
public class Novedades extends HttpServlet {

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
       /* response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();*/
                
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
        try{
            
        String Nombre = request.getParameter("nombre");
        String Apellido = request.getParameter("apellido");
        String Documento = request.getParameter("documento");
        String Tipo = request.getParameter("tipos");
        String Descripcion = request.getParameter("descripcion");
        String Sede = request.getParameter("sede");
        String Cargo = request.getParameter("cargo");
        
        Conexion c = new Conexion();
        Connection con = c.Conectar();
        
        PreparedStatement Ps = con.prepareStatement("INSERT INTO Novedades (Nombre_empleado, Apellidos, Documento, Tipo_documento, Descripcion, Sede_empleado, Cargo) VALUES(?,?,?,?,?,?,?)");
        Ps.setString(1, Nombre);
        Ps.setString(2, Apellido);
        Ps.setString(3, Documento);
        Ps.setString(4, Tipo);
        Ps.setString(5, Descripcion);
        Ps.setString(6, Sede);
        Ps.setString(7, Cargo);
        
        Ps.executeUpdate();
        
        response.sendRedirect("Exito.jsp");
        
        Ps.close();
        con.close();
        
        
        
        
        
        
        }catch(Exception e){
        
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
