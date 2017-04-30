package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EnsaladaFrut_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("               <header>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <nav class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("                    <!-- El logotipo y el icono que despliega el menú se agrupan\n");
      out.write("                         para mostrarlos mejor en los dispositivos móviles -->\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\n");
      out.write("                                data-target=\".navbar-ex1-collapse\">\n");
      out.write("                            <span class=\"sr-only\">Desplegar navegación</span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <img src=\"img/logolj.png\" width=\"50px\" style=\"vertical-align: middle; float: left;\" alt=\"\">\n");
      out.write("                        <a class=\"navbar-brand\" href=\"#\">LA JUGOSA</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Agrupar los enlaces de navegación, los formularios y cualquier\n");
      out.write("                         otro elemento que se pueda ocultar al minimizar la barra -->\n");
      out.write("                    <div class=\"collapse navbar-collapse navbar-ex1-collapse\">\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"#\">Inicio</a></li>\n");
      out.write("                            <li><a href=\"#\">Productos</a></li>\n");
      out.write("                            <li><a href=\"#\">Quienes somos</a></li>\n");
      out.write("                            <li><a href=\"#\">Contáctenos</a></li>\n");
      out.write("                            <li><div class=\"login\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <!-- Botón de Iniciar sesión -->\n");
      out.write("                                    <a data-toggle=\"modal\" href=\"#Login\"><img src=\"img/user-verde.png\" class=\"img-circle\" width=\"50\" alt=\"Iniciar sesión\"></a>\n");
      out.write("\n");
      out.write("                                    <!-- Modal -->\n");
      out.write("                                    <div class=\"modal fade\" id=\"Login\" role=\"dialog\">\n");
      out.write("                                        <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("                                            <!-- Cabecera del modal, tiene el logo de la jugosa-->\n");
      out.write("                                            <center>\n");
      out.write("                                                <form action=\"Login\">\n");
      out.write("                                                    <div class=\"modal-content\">\n");
      out.write("                                                        <div class=\"modal-header\">\n");
      out.write("                                                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                                                            <img src=\"img/logo.png\">\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                        <div class=\"modal-body\">\n");
      out.write("                                                            <h3>Usuario</h3>\n");
      out.write("                                                            <input type=\"text\" placeholder=\"Ingrese su usuario\" class=\"form-control\" name=\"Usuario\">\n");
      out.write("                                                            <h3>Contraseña</h3>\n");
      out.write("                                                            <input type=\"password\" placeholder=\"Ingrese su contraseña\" name=\"Contra\" class=\"form-control\">\n");
      out.write("                                                            <br>\n");
      out.write("                                                            <a href=\"#\" class=\"pull-left\">Restaurar contraseña</a>\n");
      out.write("                                                            <br>\n");
      out.write("                                                            <a href=\"#\" class=\"pull-left\">Registrar usuario</a>\n");
      out.write("                                                            <br>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <!-- Footer del modal, dos botones, cerrrar y Acceder-->\n");
      out.write("                                                        <div class=\"modal-footer\">\n");
      out.write("                                                            <center>\n");
      out.write("                                                                <input type=\"submit\" class=\"btn btn-success\" value=\"acceder\">\n");
      out.write("                                                                <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\">Cerrar</button>\n");
      out.write("\n");
      out.write("                                                            </center>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </form>\n");
      out.write("                                            </center>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        \n");
      out.write("           <footer>\n");
      out.write("            <div class=\"container text-center pie\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xs-12\">\n");
      out.write("                        <p>La Jugosa &copy; </p>\n");
      out.write("                        <p>Todos los derechos reservados</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
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
