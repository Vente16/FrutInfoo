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
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @authr John Jairo
 */
public class SolicitarInsumo extends HttpServlet {

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
    @SuppressWarnings("empty-statement")
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
        processRequest(request, response);
        
        try{
        String Ins = request.getParameter("nombre_insumo");
        String can = request.getParameter("cantidad");
        String sed = request.getParameter("tipo_sede");
        String aut= request.getParameter("autorizar");
        String FchSoli = request.getParameter("fecha_solicitud");
        String FecAut = request.getParameter("fecha_aut");
        
           
        Conexion c = new Conexion();
        Connection con = c.Conectar();
        
            PreparedStatement Ps = con.prepareStatement("INSERT INTO solicitud_insumo(nombre_insumo, cantidad, id_punto_venta, autorizar, fecha_solicitud,fecha_autorizacion)VALUES(?,?,?,?,?,?)");
            Ps.setString(1, Ins);
            Ps.setString(2, can);
            Ps.setString(3, sed);
            Ps.setString(4, aut);
            Ps.setString(5, FchSoli);
            Ps.setString(6, FecAut);
            
            Ps.executeUpdate();
            response.sendRedirect("Exito.jsp");
            
    
        }catch(IOException | SQLException e){
            response.sendRedirect("Error.jsp");
            System.out.println(""+e);
        
        
        };
        
        
        
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