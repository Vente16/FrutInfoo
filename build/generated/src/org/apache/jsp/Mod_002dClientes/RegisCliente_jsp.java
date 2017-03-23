package org.apache.jsp.Mod_002dClientes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegisCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Mod-Clientes/../headerModulos.jspf");
    _jspx_dependants.add("/Mod-Clientes/../footer.jspf");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/estilos2.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("           ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<header>\r\n");
      out.write("    <div class=\"container\">\r\n");
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
      out.write("                <img src=\"img/logolj.png\" width=\"50px\" style=\"vertical-align: middle; float: left;\" alt=\"\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">LA JUGOSA</a>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Agrupar los enlaces de navegación, los formularios y cualquier\r\n");
      out.write("                 otro elemento que se pueda ocultar al minimizar la barra -->\r\n");
      out.write("            <div class=\"collapse navbar-collapse navbar-ex1-collapse\">\r\n");
      out.write("              <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("      <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><span class=\"glyphicon glyphicon-briefcase\"></span>Administrativo<span class=\"caret\"></span></a>\r\n");
      out.write("        <ul class=\"dropdown-menu\">\r\n");
      out.write("          <li><a href=\"MOD-ADMINISTRATIVO/Administrativo_Autorizaciones.html\">Autorizaciones</a></li>\r\n");
      out.write("          <li><a href=\"MOD-ADMINISTRATIVO/Administrativo_Ventas.html\">Informe de ventas</a></li>\r\n");
      out.write("          <li><a href=\"MOD-ADMINISTRATIVO/Administrativo_Insumos.html\">Informe de Insumos</a></li>\r\n");
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
      out.write("          <li><a href=\"#\">Registrar clientes</a></li>\r\n");
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
      out.write("    </div>\r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section class=\"main container-fluid\">\n");
      out.write("            <form class=\"navbar-left\" role=\"search\">\n");
      out.write("                <p>Ingresar Numero de Documento</p>\n");
      out.write("                <input type=\"number\" class=\"form-control\" value=\"\">\n");
      out.write("                <br>\n");
      out.write("                <button type=\"submit\" class=\"btn btn-success\">REGISTRAR</button>\n");
      out.write("                <button type=\"submit\" class=\"btn btn-info\">CONSULTAR</button>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            <div style=\"margin-top: 100px\">\n");
      out.write("                <h2 style=\"text-align: center;\">Registro del Cliente</h2><br><br>\n");
      out.write("            </div>\n");
      out.write("            <form>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <label class=\"form-control-label\" for=\"index-form-4-4name\">\n");
      out.write("                        <span class=\"titulo\">Seleccione el tipo de documento</span></label>\n");
      out.write("                    <select class=\"form-control\">\n");
      out.write("                        <option>Cédula de Ciudadanía</option>\n");
      out.write("                        <option>Tarjeta de Identidad</option>\n");
      out.write("                        <option>Registro Civil </option>\n");
      out.write("                        <option>Cédula de Extranjería</option>\n");
      out.write("                        <option>Otros</option>\n");
      out.write("                    </select><br>\n");
      out.write("\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <label class=\"form-control-label\" for=\"index-form1-1-name\"><span class=\"titulo\">Número de documento</span></label><br>\n");
      out.write("                        <input type=\"option\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form1-1-name\" placeholder=\"Ingrese su número de documento\"><br>\n");
      out.write("\n");
      out.write("                        <label class=\"form-control-label\" for=\"index-form1-1-name\"><span class=\"titulo\">Nombres</span></label><br>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form1-1-name\" placeholder=\"Ingrese los nombres del empleado\"><br>\n");
      out.write("\n");
      out.write("                        <labe2 class=\"form-control-label\" for=\"index-form2-2-name\"><span class=\"titulo\"><b>Apellidos</b></span></labe2><br>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form2-2-name\" placeholder=\"Ingrese los apellidos del empleado\"><br>\n");
      out.write("\n");
      out.write("                        <labe2 class=\"form-control-label\" for=\"index-form2-2-name\"><span class=\"titulo\"><b>Fecha de Nacimiento</b></span></labe2><br>\n");
      out.write("                        <input type=\"date\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form2-2-name\" placeholder=\"Ingrese los apellidos del empleado\"><br>\n");
      out.write("\n");
      out.write("                        <label class=\"form-control-label\" for=\"index-form-4-4name\">\n");
      out.write("                            <span class=\"titulo\">Sexo</span></label>\n");
      out.write("                        <select class=\"form-control\">\n");
      out.write("                            <option>Masculino</option>\n");
      out.write("                            <option>Femenino</option>\n");
      out.write("                        </select><br>\n");
      out.write("\n");
      out.write("                        <label class=\"form-control-label\" for=\"index-form1-1-name\"><span class=\"titulo\">Municipio</span></label><br>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form1-1-name\" placeholder=\"Ingrese el Municipio donde actualmente vive\"><br>\n");
      out.write("\n");
      out.write("                        <label class=\"form-control-label\" for=\"index-form1-1-name\"><span class=\"titulo\">Dirección</span></label><br>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form1-1-name\" placeholder=\"Ingrese su Dirección completa\"><br>\n");
      out.write("\n");
      out.write("                        <label class=\"form-control-label\" for=\"index-form3-3-name\"><span class=\"titulo\">Barrio</span></label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form3-3-name\" placeholder=\"Ingrese el barrio donde vive\"><br>\n");
      out.write("\n");
      out.write("                        <labe2 class=\"form-control-label\" for=\"index-form2-2-name\"><span class=\"titulo\"><b>Teléfono</b></span></labe2><br>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form2-2-name\" placeholder=\"Ingrese su teléfono\"><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <label class=\"form-control-label\" for=\"index-form-4-4name\"><span class=\"titulo\">Celular</span></label>\n");
      out.write("                        <input type=\"tel\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form4-4-name\" placeholder=\"Ingrese su número\"><br>\n");
      out.write("\n");
      out.write("                        <label class=\"form-control-label\" for=\"index-form-4-4name\"><span class=\"titulo\">Email</span></label>\n");
      out.write("                        <input type=\"tel\" class=\"form-control\" name=\"name\"required=\"\" data-form-field=\"Name\" id=\"index-form4-4-name\" placeholder=\"Ingrese su cuenta de correo electrónico\"><br><br><br>\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\">MODIFICAR</button> <button type=\"submit\" class=\"btn btn-success\">ACEPTAR</button>\n");
      out.write("\n");
      out.write("                        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("           \n");
      out.write("      ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer>\r\n");
      out.write("    <div class=\"container navbar-fixed-bottom\">\r\n");
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
      out.write("\n");
      out.write("       \n");
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
