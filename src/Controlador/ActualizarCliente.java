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
 * @author User
 */
public class ActualizarCliente extends HttpServlet {

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
        processRequest(request, response);
          response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            String Id = request.getParameter("Id");
            String Nombre = request.getParameter("Nombre");
            String Apellido = request.getParameter("Apellido");
            String Telefono = request.getParameter("Telefono");
            String Municipio = request.getParameter("Municipio");
            String Barrio = request.getParameter("Barrio");
            String Direccion = request.getParameter("Direccion");
            String Celular = request.getParameter("Celular");
            String TipoD = request.getParameter("TipoD");
            String FechaN = request.getParameter("FechaN");
            String Correo = request.getParameter("Correo");
            String Membrecia = request.getParameter("Membrecia");
            
            
            Conexion c = new Conexion();
            Connection co = c.Conectar();
            
            PreparedStatement st = co.prepareStatement("UPDATE clientes SET Nombre=?, Apellido=?, Telefono=?, Municipio=?, Barrio=?, Direccion=?, Celular=?, Tipo_Documento=?, Fecha_nacimiento=?, Email=?, Membrecia=? WHERE Id=?;");
            st.setString(1, Nombre);
            st.setString(2, Apellido);
            st.setString(3, Telefono);
            st.setString(4, Municipio);
            st.setString(5, Barrio);
            st.setString(6, Direccion);
            st.setString(7, Celular);
            st.setString(8, TipoD);
            st.setString(9, FechaN);
            st.setString(10, Correo);
            st.setString(11, Membrecia);
            st.setString(12, Id);
            st.executeUpdate();
           
            out.println("<h3>Actualizó los datos correctamente!</h3>");
            
            
            
            
            
            
            
            
        }catch(Exception e){
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
