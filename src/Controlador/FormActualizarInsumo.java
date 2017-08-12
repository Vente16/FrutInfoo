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
            out.println("<div class=''>");
            out.println("<form class='form-horizontal' id='ValActualizacionIns'>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='codigo'>Codigo:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Codigo'  name='codigo' value=" + rs.getString("Codigo") + ">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='tipo_insumo'>Tipo de insumo:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Tipo' name='tipo' value=" + rs.getString("Tipo") +">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='nombre'>Nombre:</label>");
            out.println("<div class='col-sm-8'> ");
            out.println("<input type='text' class='form-control' id='NombreInsumo' name='nombe_Insumo' value=" + rs.getString("Nombre_insumo") +">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'> ");
            out.println("<label class='control-label col-sm-3' for='cantidad'>Cantidad:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Cantidad' name='cantidad' value=" + rs.getString("Cantidad_insumo") +">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='valor'>Valor:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Valor' name='valor' value=" +rs.getString("Valor_insumo") +">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='fecha_ingreso'>Fecha de ingreso:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='FechaIngreso' name='fecha_ingreso' value=" + rs.getString("Fecha_ingreso") +">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='fecha_vencimiento'>Fecha de vencimiento:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='FechaVencimiento' name='fecha_vencimiento' value=" + rs.getString("Fecha_vencimiento") +">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='peso'>peso:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Peso' name='peso' value=" + rs.getString("peso") +">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='peso'>prioridad:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Prioridad' name='prioridad' value=" + rs.getString("Prioridad") +">");
            out.println("</div>");
            out.println("</div>");
            out.println("</form>");
            out.println("</div>");
            
            
           
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
