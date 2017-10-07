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
public class FormActualizarEmpleados extends HttpServlet {

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
        
        try (PrintWriter out = response.getWriter()) {
             String Id = request.getParameter("Id");
            
            Conexion c = new Conexion();
            Connection co = c.Conectar();
           
            
           PreparedStatement st = co.prepareStatement("SELECT * FROM empleados INNER JOIN cargos ON empleados.id_cargo = cargos.id_cargo WHERE id_empleado=?");
            st.setString(1, Id);
            
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
            out.println("<h4><input type='hidden' id='Id' value="+Id+"></h4>");
            out.println("<div class=''>"  );
            out.println("<form class='form-horizontal' id='ValActFormEmpl'>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='codigo'>Documento:</label>");
            out.println("<div class='col-sm-8'><br>");
            out.println("<input type='text' class='form-control' disabled  id='Documento' name='documento' value=" +rs.getString("Documento")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='tipo_insumo'>Tipo:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' disabled id='Tdoc' name='tipo' value="+rs.getString("Tipo_documento")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='nombre'>Nombre:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Nombre' name='nombre' value=" +rs.getString("Nombre")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'> ");
            out.println("<label class='control-label col-sm-3' for='cantidad'>Apellido:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Apellido' name='apellido' value=" +rs.getString("Apellido")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='valor'>Telefono:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Telefono' name='telefono' value="+rs.getString("Telefono")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'> ");
            out.println("<label class='control-label col-sm-3' for='fecha_ingreso'>Celular:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Celular' name='celular' value="+rs.getString("Celular")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='fecha_vencimiento'>Inicio Contrato:</label>");
            out.println("<div class='col-sm-8'> ");
            out.println("<input type='text' class='form-control' id='Inicon' name='inicioC' value="+rs.getString("Inicio_contrato")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='fecha_vencimiento'>Fin Contrato:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Fincon' name='FinC' value="+rs.getString("Fin_contrato")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='peso'>Cargo:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control'disabled id='Cargo' name='cargo' value="+rs.getString("Nombre_cargo")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='fechaN'>Fecha Nacimiento:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='fechaN' name='FechaN' value="+rs.getString("Fecha_nacimiento")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div id='emailv' class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='correo'>Correo:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Correo' name='correo' value="+rs.getString("Correo")+">");
            out.println("<span class='help-block' id='Empleado'></span>");
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
