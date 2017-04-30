/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import Modelo.Controlador;
import Modelo.Correo;
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
public class OlvidoContraseña extends HttpServlet {

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
           
             String Correo = request.getParameter("correo");
               
             Conexion c = new Conexion();
             Connection co = c.Conectar();
             
             PreparedStatement st = co.prepareStatement("SELECT *FROM Login WHERE Correo=?");
             st.setString(1, Correo);
             ResultSet rs = st.executeQuery();
             String contra = "";
             
              while(rs.next()){
                         contra = rs.getString("Contraseña");
                      }
             
             if(rs.absolute(1)){
               
              String mensaje = "Hola! has olvidado tu contraseña \n tu contraseña es la siguente:  "+contra;           
              Correo cor = new Correo();
              cor.setContraseña("bfziujixtbohtsjt");
              cor.setCorreo("jvente18@gmail.com");
              cor.setDestino(Correo);
              cor.setAsunto("Recuperacion de contraseña");
              cor.setMensaje(mensaje);
              Controlador cot = new Controlador();
              
              if(cot.EnviarCorreo(cor)){
              
               out.println("<p class='alert alert-success'>Se ha enviado el correo correctamente</p>");
              }
              
             }
             
             else {
             
               out.println("<p>No existe un correo electrónico con esa dirección</p>");
             
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
