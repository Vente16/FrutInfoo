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
 * @author John Jairo
 */
public class RegVentas extends HttpServlet {

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
            throws ServletException, IOException{
            try {
            String Producto = request.getParameter("producto");
            String Cantidad = request.getParameter("cantidad");
            String Precio = request.getParameter("precio");
            String Iva = request.getParameter("iva");
            String Total = request.getParameter("total");
            String TipoVen = request.getParameter("Tventa");
            String FecVencimiento = request.getParameter("FechaVen");
            String Hora = request.getParameter("hora");
            String Pedido = request.getParameter("IdPedido");
            String Cliente = request.getParameter("IdCliente");

            Conexion c = new Conexion();
            Connection con = c.Conectar();

            PreparedStatement Ps = con.prepareStatement("INSERT INTO `ventas`(Nombe_producto, Cantidad_producto, Precio_unit, Iva, Total_Pagar, Tipo_venta, Fecha_venta, Hora_venta, Pedido_Id, Id_cliente, Habilitado)VALUES(?,?,?,?,?,?,?,?,?,?,1)");
            Ps.setString(1, Producto);
            Ps.setString(2, Cantidad);
            Ps.setString(3, Precio);
            Ps.setString(4, Iva);
            Ps.setString(5, Total);
            Ps.setString(6, TipoVen);
            Ps.setString(7, FecVencimiento);
            Ps.setString(8, Hora);
            Ps.setString(9, Pedido);
            Ps.setString(10, Cliente);

            Ps.executeUpdate();
            response.sendRedirect("Exito.jsp");
            Ps.close();
            con.close();

        } catch (Exception e) {

            response.sendRedirect("Error.jsp");
            System.out.println(e);

        }
    }


   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
