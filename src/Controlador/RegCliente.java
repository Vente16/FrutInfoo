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
public class RegCliente extends HttpServlet {

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
        try{
            String Tip = request.getParameter("tipo_documento");
            String Doc = request.getParameter("documento");
            String Nom = request.getParameter("nombres");
            String Ape = request.getParameter("apellidos");
            String Fec = request.getParameter("FechaNac");
            String Mun = request.getParameter("Municipio");
            String Dir = request.getParameter("direccion");
            String Bar = request.getParameter("Barrio");
            String Tel = request.getParameter("telefono");
            String Cel = request.getParameter("celular");
            String Em = request.getParameter("Email");
            String Mem = request.getParameter("membrecia");
        
        Conexion c = new Conexion();
        Connection con = c.Conectar();
        
        PreparedStatement Ps = con.prepareStatement("INSERT INTO clientes (Tipo_documento, Documento, Nombre, Apellido, Fecha_nacimiento, Municipio, Direccion, Barrio, Telefono, Celular, Email, Membrecia, Habilitado) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,1)");
        Ps.setString(1, Tip);
        Ps.setString(2, Doc);
        Ps.setString(3, Nom);
        Ps.setString(4, Ape);
        Ps.setString(5, Fec);
        Ps.setString(6, Mun);
        Ps.setString(7, Dir);
        Ps.setString(8, Bar);
        Ps.setString(9, Tel);
        Ps.setString(10, Cel);
        Ps.setString(11, Em);
        Ps.setString(12, Mem);
        
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
