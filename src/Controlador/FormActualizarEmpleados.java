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
            out.println("<input type='hidden' id='Id' value='"+Id+"'>");
            out.println("<h4>Documento:<br><input disabled id='Documento' type='text' class='form-control'  value= "+rs.getString("Documento")+"></h4>"  );
            out.println("<h4>Tipo de documento:<br><input id='Tdoc' type='text' class='form-control' disabled value= "+rs.getString("Tipo_documento")+"></h4>");
            out.println("<h4>Nombre:<br><input type='text' id='Nombre' class='form-control'  value=  " + rs.getString("Nombre") + "></h4>");
            out.println("<h4>Apellido:<br><input type='text' id='Apellido' class='form-control'  value= " + rs.getString("Apellido")+ "></h4>");
            out.println("<h4>Telefono:<br><input type='text' id='Telefono' class='form-control'  value= " + rs.getString("Telefono") + "></h4>");
            out.println("<h4>Celular:<br><input type='text' id='Celular' class='form-control'  value= " + rs.getString("Celular") + "></h4>");
            out.println("<h4>Disponibilidad:<br><input type='text' id='Disponibilidad' class='form-control'  value= " + rs.getString("Disponibilidad") + "></h4>");
            out.println("<h4>Inicio de contraton:<br><input type='text' id='Inicon' class='form-control' disabled value= " + rs.getString("Inicio_contrato") + "></h4>");
            out.println("<h4>Fin de contrato:<br><input type='text' id='Fincon' class='form-control'  value= " + rs.getString("Fin_contrato") + "></h4>");
            out.println("<h4>Hora inicio:<br><input type='text' id='Horaini' class='form-control' disabled value= " + rs.getString("Hora_inicio") + "></h4>");
            out.println("<h4>Hora salida:<br><input type='text' id='Horafin' class='form-control' disabled value= " + rs.getString("Hora_salida") + "></h4>");  
            out.println("<h4>Cargo:<br><input type='text' id='Cargo' class='form-control "+rs.getString("id_cargo")+"' disabled value= " + rs.getString("Nombre_cargo") + "></h4>");
            out.println("<h4>Fecha de nacimiento:<br><input type='text' id='fechaN' class='form-control' disabled value= " + rs.getString("Fecha_nacimiento") + "></h4>");
            out.println("<h4>Correo:<br><input type='text' id='Correo' class='form-control'  value= " + rs.getString("Correo") + "></h4>");
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
