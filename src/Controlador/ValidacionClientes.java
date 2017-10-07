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
 * @author Home
 */
public class ValidacionClientes extends HttpServlet {

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
            
            String correo = request.getParameter("correo");
            String metodo = request.getParameter("metodo");
            String documento  = request.getParameter("documento");
            Conexion c = new Conexion();
            Connection con = c.Conectar();
            
            switch(metodo){
                
                case "consultarDocumento":
                PreparedStatement Ps = con.prepareStatement("SELECT *FROM clientes WHERE Documento="+documento);
                ResultSet rs = Ps.executeQuery();
                int res = 0;
                while(rs.next()){
                   res++;
                
                }
                out.print(res);
                
               break;
                case "consultarCorreo":
                PreparedStatement sp = con.prepareStatement("SELECT *FROM clientes WHERE Email='"+correo+"'");
                ResultSet sr = sp.executeQuery();
                int val = 0;
                while(sr.next()){
                   val++;
                
                }
                out.print(val);
               break;
            }
            PreparedStatement Ps = con.prepareStatement("INSERT INTO domicilio (producto, cantidad, nombres, apellidos, teléfono, celular, dirección) VALUES (?,?,?,?,?,?,?);");
            Ps.setString(1, correo);
            Ps.setString(2, documento);
            

            Ps.executeUpdate();
            
        }catch(Exception e){
            System.out.println(e);
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
