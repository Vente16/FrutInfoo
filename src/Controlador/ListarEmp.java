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
 * @author oscar
 */
public class ListarEmp extends HttpServlet {

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
        ResultSet rsE;
        ResultSet rst;
          try{
           Conexion con =new Conexion();
            Connection c=con.Conectar();
            HttpSession session = request.getSession(true);
            int pagina=Integer.parseInt(request.getParameter("pag"));
             String sqlC="SELECT * FROM empleados   INNER JOIN cargos ON empleados.id_cargo = cargos.id_cargo WHERE empleados.Habilitado = 1  LIMIT 5 OFFSET "+(pagina)*5+";";
             String sql="SELECT count(*) as Id_empleado FROM empleados";
             
             Statement stm =c.createStatement();
             Statement stm1=c.createStatement();
              rsE=stm.executeQuery(sqlC);
              rst=stm1.executeQuery(sql);
            
             session.setAttribute("listarE", rsE);
             session.setAttribute("pag", pagina);
           session.setAttribute("tamaño", rst);
             
            request.getRequestDispatcher("ListarEmpleados.jsp").forward(request, response);
            
              rsE.close();
              c.close();
    }catch(Exception e){
        e.printStackTrace();
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
