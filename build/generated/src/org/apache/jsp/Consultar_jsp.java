package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import Modelo.Conexion;

public final class Consultar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <title>Consulta</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            
          try{
              
          Conexion c = new Conexion();
          Connection co = c.Conectar();
          
          String codigo = request.getParameter("Codigo");
          String cantidad = request.getParameter("Cantidad");
         

          PreparedStatement st = co.prepareStatement("SELECT *FROM productos WHERE Id_producto=?");
          st.setString(1, codigo);
          
          ResultSet rs = st.executeQuery();
          
          while(rs.next()){
          
         
          int cant = Integer.parseInt(cantidad);
          
          int valor = Integer.parseInt(rs.getString("Valor_producto"));

          int iva = 200;
          
          int Total = (cant*valor);
          
          int TotalP = Total+iva;
        
        
      out.write("\n");
      out.write("            \n");
      out.write("   \n");
      out.write("            <td class=\"id\">");
      out.print( rs.getString("Id_producto"));
      out.write("</td>\n");
      out.write("            <td class=\"nombre\">");
      out.print( rs.getString("Nombre_producto"));
      out.write("</td>\n");
      out.write("            <td class=\"cantidad\">");
      out.print( cantidad);
      out.write("</td>\n");
      out.write("            <td class=\"valor\">");
      out.print( rs.getString("Valor_producto"));
      out.write("</td>\n");
      out.write("            <td class=\"total\">");
      out.print( Total);
      out.write("</td>\n");
      out.write("            <td class=\"iva\">");
      out.print( iva);
      out.write("</td>\n");
      out.write("            <td class=\"costo\">");
      out.print( TotalP);
      out.write("</td>\n");
      out.write("            <td><button class=\"glyphicon glyphicon-trash btn btn-danger Eliminar\"></button></td>\n");
      out.write("            \n");
      out.write("  \n");
      out.write("            \n");
      out.write("            \n");
      out.write("\n");
      out.write("     ");
    } 

          }catch(Exception e){
     
            System.out.println(e);
        
      out.write("\n");
      out.write("        \n");
      out.write("        <div>No exixte ningún producto con ese código</div>\n");
      out.write("        \n");
      out.write("        ");

              }
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
