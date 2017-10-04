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
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Home
 */
public class InfoTablas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        try (PrintWriter out = response.getWriter()) {
            String tabla = request.getParameter("ct");
            Conexion con = new Conexion();
            Connection c =con.Conectar();
            HttpSession session = request.getSession(true); 
            String sqlTablas ="DESCRIBE "+ tabla +";";
            String sqlDatos ="SELECT * FROM "+ tabla +";";
            
            
            Statement stm1 = c.createStatement();
            Statement stm2=c.createStatement();
            stm1.executeUpdate(sqlTablas);
            ResultSet rs1 =stm1.getResultSet();
            ResultSet rs2 = stm2.executeQuery(sqlDatos);
            
            session.setAttribute("consulta", rs1);
            session.setAttribute("datos", rs2);
            
            response.sendRedirect("InfoTablas.jsp");
            
//            while (rs1.next()) {                
//                int ctd = 1;
//                System.out.println(rs1.getString(ctd));
//                
//                out.println("<th>" + rs1.getString(ctd)+"</th>");
//                ctd = ctd+1;
//            }
            
            
            
          
            
        }catch(Exception e){
            e.printStackTrace();
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
