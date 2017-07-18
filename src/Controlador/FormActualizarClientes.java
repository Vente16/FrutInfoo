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
 * @author User
 */
public class FormActualizarClientes extends HttpServlet {

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
         
        
           
            String Id = request.getParameter("Id");
            
            Conexion c = new Conexion();
            Connection co = c.Conectar();
            
            PreparedStatement st = co.prepareStatement("SELECT *FROM clientes WHERE Id=?");
            st.setString(1, Id);
            
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
            out.println("<input type='hidden' id='Id' value='"+Id+"'>");
            out.println("<h4 <span id='Document'>Documento:  " + rs.getString("Documento") +"</span><br> <br> Tipo de documento <br><br> <h4><select id='DocumentT' class='form-control'><option>"+rs.getString("Tipo_documento")+"</option><option>Tarjeta de identidad</option><option>Cedula de extranjeria</option></select></h4>");
            out.println("<h4>Nombre <br> <input class='form-control' type='text' id='Nombre' value='" + rs.getString("Nombre") + "'></h4>");
            out.println("<h4>Apellido <br> <input class='form-control' type='text' id='Apellido' value='" + rs.getString("Apellido")+ "'></h4>");
            out.println("<h4>Telefóno <br> <input class='form-control' type='text' id='Telefono' value=' " + rs.getString("Telefono") + "'></h4>");
            out.println("<h4>Municipio <br> <input class='form-control' type='text' id='Municipio' value=' " + rs.getString("Municipio") + "'></h4>");
            out.println("<h4>Barrio <br> <input class='form-control' type='text' id='Barrio' value='" + rs.getString("Barrio") + "'></h4>");
            out.println("<h4>Dirección <br> <input class='form-control' type='text' id='Direccion' value=' " + rs.getString("Direccion") + "'></h4>");
            out.println("<h4>Celular <br> <input class='form-control' type='text' id='Celular' value=' " + rs.getString("Celular") + "'></h4>");
            out.println("<h4>Fecha de nacimiento <br> <input class='form-control' type='date' id='FechaN' value=' " + rs.getString("Fecha_nacimiento") + "'></h4>");
            out.println("<h4>Correo <br> <input class='form-control' type='text' id='Correo' value='" + rs.getString("Email") + "'></h4>");  
            out.println("<h4>Membrecia<br><select id='Membrecia' class='form-control'><option> " + rs.getString("Membrecia") + "</option><option>no</option></select></h4>");
          
            
            }
           
            
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
