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
 * @author ozkar
 */
public class ActualizarInsumo extends HttpServlet {

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
        try(PrintWriter out = response.getWriter()) {
            
            String Codigo = request.getParameter("Codigo");
            String Tipo = request.getParameter("Tipo");
            String NombreInsumo = request.getParameter("NombreInsumo");
            String Cantidad = request.getParameter("Cantidad");
            String Valor = request.getParameter("Valor");
            String FechaIngreso = request.getParameter("FechaIngreso");
            String FechaVencimiento = request.getParameter("FechaVencimiento");
            String Peso = request.getParameter("Peso");
            String Prioridad = request.getParameter("Prioridad");
            String Id = request.getParameter("Id");
            
            Conexion c = new Conexion();
            Connection con = c.Conectar();
            
            String sql = "UPDATE insumos SET Codigo=?, Tipo=?, Peso=?, Nombre_insumo=?, Cantidad_insumo=?, Valor_insumo=?, Fecha_ingreso=?, Fecha_vencimiento=?, Prioridad=? WHERE Id_Insumo=?";
            
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, Codigo);
            pst.setString(2, Tipo);
            pst.setString(3, Peso);
            pst.setString(4, NombreInsumo);
            pst.setString(5, Cantidad);
            pst.setString(6, Valor);
            pst.setString(7, FechaIngreso);
            pst.setString(8, FechaVencimiento);
            pst.setString(9, Prioridad);
            pst.setString(10, Id);
            pst.executeUpdate();
            pst.close();
            con.close();
            
            
            out.println("<h4>Se actualizo correctamente</h4>");
            
            
        } catch (Exception e) {
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
