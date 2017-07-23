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
 * @author ozkar
 */
public class FormActualizarInsumo extends HttpServlet {

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
       try (PrintWriter out = response.getWriter()) {
          
             
            String Id = request.getParameter("Id");
            
            Conexion c = new Conexion();
            Connection co = c.Conectar();
            
            PreparedStatement st = co.prepareStatement("SELECT *FROM insumos WHERE Id_Insumo=?");
            st.setString(1, Id);
            
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
            out.println("<h4 class='hide' >:<br><input id='Id' type='text' class='form-control ' value=" +  rs.getString("Id_Insumo")+"></h4>"); 
            out.println("<h4>codigo:<br><input id='Codigo' type='text' class='form-control ' value=" +  rs.getString("Codigo")+"></h4>");
            out.println("<h4>Tipo de insumo:<br><input id='Tipo' type='text' class='form-control ' value="+rs.getString("Tipo")+"></h4>");
            out.println("<h4>Nombre del insumo: <br><input id='NombreInsumo' type='text' class='form-control ' value= " + rs.getString("Nombre_insumo") + "></h4>");
            out.println("<h4>Cantidad insumo:<br><input id='Cantidad' type='text' class='form-control ' value= " + rs.getString("Cantidad_insumo")+ "></h4>");
            out.println("<h4>Valor insumo:<br><input id='Valor' type='text' class='form-control ' value= " + rs.getString("Valor_insumo") + "></h4>");
            out.println("<h4>Fecha de ingreso: <br><input id='FechaIngreso' type='text' class='form-control ' value=" + rs.getString("Fecha_ingreso") + "></h4>");
            out.println("<h4>Fecha de vencimiento:<br><input id='FechaVencimiento' type='text' class='form-control ' value= " + rs.getString("Fecha_vencimiento") + "></h4>");
            out.println("<h4>Peso:<br><input id='Peso' type='text' class='form-control ' value= " + rs.getString("peso") + "></h4>");
            out.println("<h4>Prioridad:<br><input id='Prioridad' type='text' class='form-control ' value= " + rs.getString("Prioridad") + "></h4>");
           
            
            }
           
        } catch(Exception e){
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
