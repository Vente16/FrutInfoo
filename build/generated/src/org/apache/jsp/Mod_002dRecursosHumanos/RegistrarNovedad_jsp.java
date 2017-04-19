package org.apache.jsp.Mod_002dRecursosHumanos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegistrarNovedad_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Mod-RecursosHumanos/../headerModulos.jspf");
    _jspx_dependants.add("/Mod-RecursosHumanos/../footerModulos.jspf");
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
      out.write("        <title>Registrar novedad</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/estilos2.css\">\r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("          ");
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
      out.write("          <li><a href=\"../Mod-Administrativo/Autorizaciones_admin.jsp\">Autorizaciones</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Administrativo/Ventas_admin.jsp\">Informe de ventas</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Administrativo/Insumos_admin.jsp\">Informe de Insumos</a></li>\r\n");
      out.write("          <li><a href=\"../Mod-Administrativo/InformeEmpleados_admin.jsp\">Informe de empleados</a></li>\r\n");
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
      out.write("        <h2 style=\"text-align: center;\"><b>REGISTRAR NOVEDAD</b></h2>\r\n");
      out.write("       <h4 style=\"text-align: center;\"><b>llene el formulario con los datos del empleado que desea registrarle la novedad.</b></h4><br><br>\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("              \r\n");
      out.write("       <form action=\"../Novedades\" method=\"post\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                                    <label class=\"form-control-label\" for=\"index-form1-1-name\"><span class=\"titulo\">Nombres</span></label><br>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"nombre\" required=\"\" data-form-field=\"Name\" id=\"index-form1-1-name\" placeholder=\"Ingrese los nombres del empleado\"><br>\r\n");
      out.write("\r\n");
      out.write("                                     <labe2 class=\"form-control-label\" for=\"index-form2-2-name\"><span class=\"titulo\"><b>Apellidos</b></span></labe2><br>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"apellido\" required=\"\" data-form-field=\"Name\" id=\"index-form2-2-name\" placeholder=\"Ingrese los apellidos del empleado\"><br>\r\n");
      out.write("\r\n");
      out.write("                                    <label class=\"form-control-label\" for=\"index-form1-1-name\"><span class=\"titulo\">Documento de identificación</span></label><br>\r\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" name=\"documento\" required=\"\" data-form-field=\"Name\" id=\"index-form1-1-name\" placeholder=\"Ingrese el número de documento de identificación\"><br>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                      <label class=\"form-control-label\" for=\"index-form-4-4name\"><span class=\"titulo\">Seleccione el tipo de documento</span></label>\r\n");
      out.write("                                         <select class=\"form-control\" name=\"tipos\">\r\n");
      out.write("                                            <option>Cédula de Ciudadanía(CC)</option>\r\n");
      out.write("                                            <option>Tarjeta de Identidad (TI)</option>\r\n");
      out.write("                                            <option>Registro Civil (RC)</option>\r\n");
      out.write("                                            <option>Cédula de Extranjería (CE)</option>\r\n");
      out.write("                                            <option>Otros</option>\r\n");
      out.write("                                      </select>\r\n");
      out.write("                                      </div>\r\n");
      out.write("                                      <label class=\"form-control\">Descripción detallada de la novedad</label>\r\n");
      out.write("                                     <textarea name=\"descripcion\" id=\"\" cols=\"30\" rows=\"10\" class=\"form-control\" placeholder=\"Escriba la descripcion detallada de la novedad\"></textarea>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                      <label class=\"form-control-label\" for=\"index-form-4-4name\"><span class=\"titulo\">Seleccione la sede del empleado</span></label>\r\n");
      out.write("                                       <select class=\"form-control\" name=\"sede\">\r\n");
      out.write("                                            <option>Envigado </option>\r\n");
      out.write("                                            <option>Itagüí</option>\r\n");
      out.write("                                            <option>Sabaneta</option>\r\n");
      out.write("                                            <option>Poblado</option>\r\n");
      out.write("                                            <option>Carrera 80</option>\r\n");
      out.write("                                            <option>Los Sauces</option>\r\n");
      out.write("                                            <option>Laureles</option>\r\n");
      out.write("                                            <option>Avenida Oriental</option>\r\n");
      out.write("                                            <option>Bello</option>\r\n");
      out.write("                                            <option>Belén</option>\r\n");
      out.write("                                      </select>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                  <label class=\"form-control-label\" for=\"index-form1-1-name\"><span class=\"titulo\">Cargo</span></label>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"cargo\" required=\"\" data-form-field=\"Name\" id=\"index-form1-1-name\" placeholder=\"Ingrese el cargo del empleado\"><br> \r\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-success\">Registrar Novedad</button> \r\n");
      out.write("                                    \r\n");
      out.write("              </form>\r\n");
      out.write("            </div><br><br><br><br>\r\n");
      out.write("              <div class=\"modal fade\" id=\"registrar\" role=\"dialog\">\r\n");
      out.write("         <div class=\"modal-dialog\">\r\n");
      out.write("            <!-- Cabecera del modal-->\r\n");
      out.write("            <div class=\"modal-content\">\r\n");
      out.write("               <div class=\"modal-header\">\r\n");
      out.write("                   <div class=\"alert alert-success\">\r\n");
      out.write("                        <strong>¡Éxito!</strong> Novedad registrada correctamente.\r\n");
      out.write("                     </div>\r\n");
      out.write("               </div>\r\n");
      out.write("               <!-- Footer del modal, dos botones, cerrrar y Acceder-->\r\n");
      out.write("               <div class=\"modal-footer\">\r\n");
      out.write("                  <button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\">Cerrar</button>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("   ");
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
      out.write("\r\n");
      out.write("      \r\n");
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
