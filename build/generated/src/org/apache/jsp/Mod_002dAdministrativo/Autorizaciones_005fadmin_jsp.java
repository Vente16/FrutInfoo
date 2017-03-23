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
    _jspx_dependants.add("/Mod-Administrativo/../header.jspf");
    _jspx_dependants.add("/Mod-Administrativo/../footer.jspf");
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
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\"/>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/estilos2.css\"/>\n");
      out.write("        <script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<header>\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<nav class=\"navbar navbar-default\" role=\"navigation\">\r\n");
      out.write("\t\t\t  <!-- El logotipo y el icono que despliega el menú se agrupan\r\n");
      out.write("\t\t\t       para mostrarlos mejor en los dispositivos móviles -->\r\n");
      out.write("\t\t\t  <div class=\"navbar-header\">\r\n");
      out.write("\t\t\t    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\r\n");
      out.write("\t\t\t            data-target=\".navbar-ex1-collapse\">\r\n");
      out.write("\t\t\t      <span class=\"sr-only\">Desplegar navegación</span>\r\n");
      out.write("\t\t\t      <span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t      <span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t      <span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t    </button>\r\n");
      out.write("\t\t\t    <img src=\"img/logolj.png\" width=\"50px\" style=\"vertical-align: middle; float: left;\" alt=\"\">\r\n");
      out.write("\t\t\t    <a class=\"navbar-brand\" href=\"#\">LA JUGOSA</a>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t\t  <!-- Agrupar los enlaces de navegación, los formularios y cualquier\r\n");
      out.write("\t\t\t       otro elemento que se pueda ocultar al minimizar la barra -->\r\n");
      out.write("\t\t\t  <div class=\"collapse navbar-collapse navbar-ex1-collapse\">\r\n");
      out.write("\t\t\t    <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\t\t\t      <li><a href=\"#\">Inicio</a></li>\r\n");
      out.write("\t\t\t      <li><a href=\"#\">Productos</a></li>\r\n");
      out.write("\t\t\t      <li><a href=\"#\">Quines somos</a></li>\r\n");
      out.write("\t\t\t      <li><a href=\"#\">Contactenos</a></li>\r\n");
      out.write("\t\t\t      <li><div class=\"login\">\r\n");
      out.write("\t\t\t    \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t  <!-- Botón de Iniciar sesión -->\r\n");
      out.write("\t\t\t  <a data-toggle=\"modal\" href=\"#Login\"><img src=\"img/user-verde.png\" class=\"img-circle\" width=\"50\" alt=\"Iniciar sesión\"></a>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t  <!-- Modal -->\r\n");
      out.write("\t\t\t  <div class=\"modal fade\" id=\"Login\" role=\"dialog\">\r\n");
      out.write("\t\t\t    <div class=\"modal-dialog\">\r\n");
      out.write("\t\t\t    \r\n");
      out.write("\t\t\t      <!-- Cabecera del modal, tiene el logo de la jugosa-->\r\n");
      out.write("\t\t\t      <center>\r\n");
      out.write("\t\t\t\t      <div class=\"modal-content\">\r\n");
      out.write("\t\t\t\t        <div class=\"modal-header\">\r\n");
      out.write("\t\t\t\t          <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("\t\t\t\t          <img src=\"img/logo.png\">\r\n");
      out.write("\t\t\t\t        </div>\r\n");
      out.write("\t\t\t\t        \r\n");
      out.write("\t\t\t\t        <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->\r\n");
      out.write("\t\t\t\t        <div class=\"modal-body\">\r\n");
      out.write("\t\t\t\t            <h3>Usuario</h3>\r\n");
      out.write("\t\t\t\t            <input type=\"text\" placeholder=\"Ingrese su usuario\" class=\"form-control\" id=\"user\">\r\n");
      out.write("\t\t\t\t            <h3>Contraseña</h3>\r\n");
      out.write("\t\t\t\t            <input type=\"password\" placeholder=\"Ingrese su contraseña\" id=\"pass\" class=\"form-control\">\r\n");
      out.write("\t\t\t\t         </div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t          <!-- Footer del modal, dos botones, cerrrar y Acceder-->\r\n");
      out.write("\t\t\t\t        <div class=\"modal-footer\">\r\n");
      out.write("\t\t\t\t            <center>\r\n");
      out.write("\t\t\t\t               <buttton type=\"submit\" class=\"btn btn-success\">Acceder</buttton>\r\n");
      out.write("\t\t\t\t               <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\">Cerrar</button>\r\n");
      out.write("\t\t\t\t            </center>\r\n");
      out.write("\t\t\t\t        </div>\r\n");
      out.write("\t\t\t\t      </div>\r\n");
      out.write("\t\t\t      </center>\r\n");
      out.write("\t\t\t    </div>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t  \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t    </ul>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t\t      \r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t</nav>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</header>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <table class=\"table table-hover\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Id de solicitud</th>\n");
      out.write("                        <th>Sede</th>\n");
      out.write("                        <th>Descricion de la solicitud</th>\n");
      out.write("                        <th>Detalle</th>\n");
      out.write("                        <th>Autorizar</th>\n");
      out.write("                        <th>Desautorizar</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>001</td>\n");
      out.write("                        <td>poblado</td>\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>002</td>\n");
      out.write("                        <td>carrera 80</td>\n");
      out.write("                        <td>se solicitan un pedido de 40 manzanaz y 80 limones</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>003</td>\n");
      out.write("                        <td>poblado</td>\n");
      out.write("                        <td>se solicitan un pedido de 40 manzanaz y 80 limones</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>004</td>\n");
      out.write("                        <td>Itaguí</td>\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>005</td>\n");
      out.write("                        <td>Sabaneta</td>\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>006</td>\n");
      out.write("                        <td>Envigado</td>\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>007</td>\n");
      out.write("                        <td>Belen</td>\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>008</td>\n");
      out.write("                        <td>Laureles</td>\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>009</td>\n");
      out.write("                        <td>Los sauses</</td>\n");
      out.write("                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>\n");
      out.write("                        <td><img src=\"img/detalle.svg\" height=30px></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/aceptari.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                        <td> <button class=\"btn-link btn-xs\" ><img src=\"img/cancelar.png\" alt=\"aceptar\" style=\"width:20px; height:20px; align:center;\"></button></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        ");
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
