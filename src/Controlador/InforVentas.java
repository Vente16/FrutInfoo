/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
public class InforVentas extends HttpServlet {

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
        response.setContentType("application/pdf");

        OutputStream out = response.getOutputStream();
        /**
         * Se abre el flujo de salida del PDF*
         */

        PreparedStatement st;
        ResultSet rs;

        try {

            Document documento = new Document();
            /**
             * Creacion de nuestro documento PDF mediante la clase Document*
             */
            PdfWriter.getInstance(documento, out);
            /**
             * Asociar documento con la salida*
             */
            documento.open();
            /**
             * Apertura del documento*
             */


            /*Agregar imagen*/
            Image imagen = Image.getInstance("C:\\Users\\Home\\Desktop\\nuevo\\logo.png");
            imagen.setAlignment(Element.ALIGN_CENTER);
            imagen.scaleToFit(50, 50);/*Tamaño de la imagen mediante el metodo scale*/
            imagen.setAlignment(Image.ALIGN_TOP | Image.TEXTWRAP);/*Alinear imagen colocandose acomodandose respecto a la tabla*/
            documento.add(imagen);

            /**
             * Titulo del PDF*
             */
            Paragraph P = new Paragraph();/*Definir titulo del PDF*/
            Font fontitulo = new Font(Font.FontFamily.HELVETICA, 20, Font.BOLD, BaseColor.RED);/*Tipo de fuente del titulo*/
            P.add(new Phrase("INFORME DE VENTAS", fontitulo));/*Tipo de fuente del Texto*/
            P.setAlignment(Element.ALIGN_CENTER);/*Clase para centrar el titulo*/
            P.add(new Phrase(Chunk.NEWLINE));/*Metodo para dar salto de linea*/
            P.add(new Phrase(Chunk.NEWLINE));
            P.add(new Phrase(Chunk.NEWLINE));
            P.add(new Phrase(Chunk.NEWLINE));
            P.add(new Phrase(Chunk.NEWLINE));
            documento.add(P);/*Agregar el texto que se creo con todas sus fuentes al documento*/

 /*Parrafo del PDF*/
            Paragraph P1 = new Paragraph();
            Font fondescrip = new Font(Font.FontFamily.TIMES_ROMAN, 16, Font.NORMAL, BaseColor.BLACK);
            P1.add(new Phrase("Este es un informe detallado de ventas", fondescrip));
            P1.setAlignment(Element.ALIGN_JUSTIFIED);
            P1.add(new Phrase(Chunk.NEWLINE));
            P1.add(new Phrase(Chunk.NEWLINE));
            P1.add(new Phrase(Chunk.NEWLINE));
            P1.add(new Phrase(Chunk.NEWLINE));
            documento.add(P1);


            /*Crear tabla*/
            PdfPTable tabla = new PdfPTable(7);
            tabla.addCell("Nombre Producto");
            tabla.addCell("Cantidad Producto");
            tabla.addCell("Precio Unt");
            tabla.addCell("Iva");
            tabla.addCell("total");
            tabla.addCell("Tipo venta");
            tabla.addCell("Fecha venta");
            tabla.setWidthPercentage(100);

            Conexion c = new Conexion();
            Connection con = c.Conectar();

            st = con.prepareStatement("SELECT * FROM `ventas` ");
            rs = st.executeQuery();

            while (rs.next()) {

                tabla.addCell(rs.getString(2));
                tabla.addCell(rs.getString(3));
                tabla.addCell(rs.getString(4));
                tabla.addCell(rs.getString(5));
                tabla.addCell(rs.getString(6));
                tabla.addCell(rs.getString(7));
                tabla.addCell(rs.getString(8));

            }

            documento.add(tabla);

            SimpleDateFormat formateador = new SimpleDateFormat("dd 'de' MMMM 'de' yyyy", new Locale("es_ES"));
            Date fechaDate = new Date();
            String fecha = formateador.format(fechaDate);
            documento.add(new Paragraph(fecha + "\n"));
            documento.add(new Paragraph(""));

            documento.close();

        } catch (Exception e) {

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
