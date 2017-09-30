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
            
            PreparedStatement st = co.prepareStatement("SELECT * FROM clientes WHERE Id=?");
            st.setString(1, Id);
            
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
            out.println("<input type='hidden' id='Id' value='"+Id+"'>");
            out.println("<h4><span id='Document'>Documento:"+ rs.getString("Documento") +"</span></h4>");
            out.println("<div class='Container'>");
            out.println("<form class='form-horizontal' id='ValFormActEmpl'>");
            out.println("<div class='form-group'>");
            out.println("<label class='col-sm-3 control-label' for='inputSuccess'>");
            out.println("<span class='titulo'>Tipo documento</span></label>");
            out.println("<div class='col-xs-8'>");
            out.println("<select class='form-control' id='DocumentT' name='tipoDoc'>");
            out.println("<option>"+rs.getString("Tipo_documento")+"</option>");
            out.println("<option>Tarjeta de Identidad</option>");
            out.println("<option>Cédula de Extranjería</option>");
            out.println("</select>");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='codigo'>Nombre:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Nombre' name='nombre' value="+rs.getString("Nombre")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='tipo_insumo'>Apellido:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Apellido' name='apellido' value="+rs.getString("Apellido")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='nombre'>Telefono:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Telefono' name='telefono' value="+rs.getString("Telefono")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='cantidad'>Municipio:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Municipio' name='municipio' value="+rs.getString("Municipio")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'> ");
            out.println("<label class='control-label col-sm-3' for='valor'>Barrio:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Barrio' name='barrio' value="+rs.getString("Barrio")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'> ");
            out.println("<label class='control-label col-sm-3' for='fecha_ingreso'>Direccion:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Direccion' name='direccion' value="+rs.getString("Direccion")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'> ");
            out.println("<label class='control-label col-sm-3' for='fecha_vencimiento'>Celular:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Celular' name='celular' value="+rs.getString("Celular")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='peso'>Fecha Nacimiento:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='FechaN' name='fechaN' value="+rs.getString("Fecha_nacimiento")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='form-group'>");
            out.println("<label class='control-label col-sm-3' for='prioridad'>Correo:</label>");
            out.println("<div class='col-sm-8'>");
            out.println("<input type='text' class='form-control' id='Correo' name='correo' value="+rs.getString("Email")+">");
            out.println("</div>");
            out.println("</div>");
            out.println("</form>");
            out.println("</div>");
            out.println("");
            out.println("");
            
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
