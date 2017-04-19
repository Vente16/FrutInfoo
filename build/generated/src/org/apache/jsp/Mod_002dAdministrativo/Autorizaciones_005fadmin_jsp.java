package org.apache.jsp.Mod_002dAdministrativo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Autorizaciones_005fadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Mod-Administrativo/../headerModulos.jspf");
    _jspx_dependants.add("/Mod-Administrativo/../footerModulos.jspf");
  }

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\"/>\r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/estilos2.css\"/>\r\n");
      out.write("        <script src=\"../js/bootstrap.min.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<header>\r\n");
      out.write("   \r\n");
      out.write("        <nav class=\"navbar navbar-default\" role=\"navigation\">\r\n");
      out.write("            <!-- El logotipo y el icono que despliega el menú se agrupan\r\n");
      out.write("                 para mostrarlos mejor en los dispositivos móviles -->\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\r\n");
      out.write("                        data-target=\".navbar-ex1-collapse\">\r\n");
      out.write("                    <span class=\"sr-only\">Desplegar navegación</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <img src=\"../img/logo.png\" width=\"50px\" style=\"vertical-align: middle; float: left;\" alt=\"\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">LA JUGOSA</a>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Agrupar los enlaces de navegación, los formularios y cualquier\r\n");
      out.write("                 otro elemento que se pueda ocultar al minimizar la barra -->\r\n");
      out.write("            <div class=\"collapse navbar-collapse navbar-ex1-collapse\">\r\n");
      out.write("              <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("      <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><span class=\"glyphicon glyphicon-briefcase\"></span>Administrativo<span class=\"caret\"></span></a>\r\n");
      out.write("        <ul class=\"dropdown-menu\">\r\n");

      out.write("          <li><a href=\"../Mod-Administrativo/Administrativo_admin.jsp\">Autorizaciones</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Administrativo/Ventas_admin.jsp\">Informe de ventas</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Administrativo/Insumos_admin.jsp\">Informe de Insumos</a></li>\r\n");
      out.write("          <li><a href=\"MOD-ADMINISTRATIVO/Administatrivo_InformeEmpleados.html\">Informe de empleados</a></li>\r\n");

      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("\r\n");
      out.write("      <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><span class=\"glyphicon glyphicon-apple\">Insumos<span class=\"caret\"></span></a>\r\n");
      out.write("        <ul class=\"dropdown-menu\">\r\n");
      out.write("          <li><a href=\"../Mod-Insumos/VerlistadeInsumos.jsp\">Ver lista de insumos</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Insumos/SolicitarInsumo.jsp\">Solicitar Insumo</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Insumos/RegistrarInsumo.jsp\">Registrar insumos</a></li>\r\n");
      out.write("          <li><a href=\"#\">Inicio</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      \r\n");
      out.write("      <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><span class=\"glyphicon glyphicon-shopping-cart\">Ventas<span class=\"caret\"></span></a>\r\n");
      out.write("        <ul class=\"dropdown-menu\">\r\n");
      out.write("          <li><a href=\"../Mod-Ventas/RegistrarVentas.jsp\">Registrar ventas</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Ventas/ListarVentas.jsp\">Listar ventas</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Ventas/InforVentas.jsp\">Realizar infrome de ventas</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Ventas/FacturaVentas.jsp\">Generar factura de ventas</a></li>\r\n");
      out.write("         \r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("     \r\n");
      out.write("      <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Recursos humanos<span class=\"caret\"></span></a>\r\n");
      out.write("        <ul class=\"dropdown-menu\">\r\n");
      out.write("          <li><a href=\"../Mod-RecursosHumanos/RegistrarEmpleados.jsp\">Registrar empleados</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-RecursosHumanos/ListarEmpleados.jsp\">Listar empleados</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-RecursosHumanos/Novedades.jsp\">Novedades</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("       \r\n");
      out.write("      \r\n");
      out.write("         <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Clientes<span class=\"caret\"></span></a>\r\n");
      out.write("        <ul class=\"dropdown-menu\">\r\n");
      out.write("            <li><a href=\"../Mod-Clientes/RegisCliente.jsp\">Registrar clientes</a></li>\r\n");
      out.write("          <li><a href=\"#\">Listar clientes</a></li>\r\n");
      out.write("          <li><a href=\"#\">Solicitar domicilio</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      \r\n");
      out.write("        <li><a href=\"#\">Cerrar sesión</a></li>\r\n");
      out.write("      \r\n");
      out.write("   \r\n");
      out.write("      </li>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("    </ul>\r\n");
      out.write("   <!--  <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("      <li><a href=\"#\">Cerrar sesión</a></li> >\r\n");
      out.write("    </ul> -->\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write(" \r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <table class=\"table table-hover\">\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Id de solicitud</th>\r\n");
      out.write("                        <th>Sede</th>\r\n");
      out.write("                        <th>Descricion de la solicitud</th>\r\n");
      out.write("                        <th>Detalle</th>\r\n");
      out.write("                        <th>Autorizar</th>\r\n");
      out.write("                        <th>Desautorizar</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </thead>\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>001</td>\r\n");
      out.write("                        <td>poblado</td>\r\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>002</td>\r\n");
      out.write("                        <td>carrera 80</td>\r\n");
      out.write("                        <td>se solicitan un pedido de 40 manzanaz y 80 limones</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>003</td>\r\n");
      out.write("                        <td>poblado</td>\r\n");
      out.write("                        <td>se solicitan un pedido de 40 manzanaz y 80 limones</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>004</td>\r\n");
      out.write("                        <td>Itaguí</td>\r\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>005</td>\r\n");
      out.write("                        <td>Sabaneta</td>\r\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>006</td>\r\n");
      out.write("                        <td>Envigado</td>\r\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>007</td>\r\n");
      out.write("                        <td>Belen</td>\r\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>008</td>\r\n");
      out.write("                        <td>Laureles</td>\r\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>009</td>\r\n");
      out.write("                        <td>Los sauses</</td>\r\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\r\n");
      out.write("                        <td><img src=\"../img/detalle.svg\" height=30px></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"../img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("      ");
      out.write("\r\n");
      out.write("<footer>\r\n");
      out.write("    <div class=\"navbar-fixed-bottom\">\r\n");
      out.write("        <div class=\" text-center pie\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-xs-12\">\r\n");
      out.write("                    <p>La Jugosa &copy; </p>\r\n");
      out.write("                    <p>Todos los derechos reservados</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</footer>\r\n");
      out.write(" \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
