/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.62
 * Generated at: 2015-06-18 20:51:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class submitanad_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');

	HttpSession hs = request.getSession();
	String email = (String)hs.getAttribute("emailid");
	if (email == null) {
		response.sendRedirect("login.jsp");
	}

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css\">\n");
      out.write("<script\n");
      out.write("\tsrc=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>Second Hand</title>\n");
      out.write("<link rel=\"stylesheet\" src=\"/SecondHandApplication/WebContent/styling.css\">\n");
      out.write("<style type=\"text/css\">\n");
      out.write("\n");
      out.write("\n");
      out.write(".panel-heading {\n");
      out.write("\tbackground-color: #4791DA !important\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t <nav class=\"navbar navbar-inverse\">\n");
      out.write("\t<div class=\"container-fluid \">\n");
      out.write("\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\n");
      out.write("\t\t\t\t<li class=\"active\"><a href=\"submitanad.jsp\"><button\n");
      out.write("\t\t\t\t\t\t\ttype=\"button\" class=\"btn btn-success btn-lg\">Submit An\n");
      out.write("\t\t\t\t\t\t\tAd</button></a></li>\n");
      out.write("\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t");

				if (email == null) {
					out.print("<ul class=\"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px;\"></span> Sign Up</a></li>");
					out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px;\"></span>Login</a></li>");
					out.print("</ul>");
				}
				else {
					out.print(email);
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px;\"></span>Logout</a></li>");
					out.print("</ul>");
				}
			
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t</nav>\n");
      out.write("\t<div class=\"page-header\">\n");
      out.write("\t\t<h1>\n");
      out.write("\t\t\t<p class=\"sansserif\" align=\"center\">SecondHand.com</p>\n");
      out.write("\t\t</h1>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"container tablediv\">\n");
      out.write("\t\t<div class=\"container tablediv\">\n");
      out.write("\t\t\t<h2>Submit a Free Classified Ad</h2>\n");
      out.write("\t\t\t<h3>\n");
      out.write("\t\t\t\t<form action=\"SubmitanadController\">\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-group\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Ad Title</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"adtitle\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"Enter AdTitle\" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Category</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"category\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"Select a Category\" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Ad Description</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<textarea class=\"form-control\" rows=\"5\" name=\"addescription\" required></textarea>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Upload Photos</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"./IMG/upload.png\" class=\"img-thumbnail\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"cannot upload\" width=\"100\" height=\"100\"> &nbsp;\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"./IMG/upload.png\" class=\"img-thumbnail\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"cannot upload\" width=\"100\" height=\"100\"> &nbsp;\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"./IMG/upload.png\" class=\"img-thumbnail\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"cannot upload\" width=\"100\" height=\"100\"> &nbsp;\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"./IMG/upload.png\" class=\"img-thumbnail\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"cannot upload\" width=\"100\" height=\"100\"> <br>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<br> <img src=\"./IMG/upload.png\" class=\"img-thumbnail\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"cannot upload\" width=\"100\" height=\"100\"> &nbsp;\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"./IMG/upload.png\" class=\"img-thumbnail\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"cannot upload\" width=\"100\" height=\"100\"> &nbsp;\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"./IMG/upload.png\" class=\"img-thumbnail\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"cannot upload\" width=\"100\" height=\"100\"> &nbsp;\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"./IMG/upload.png\" class=\"img-thumbnail\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"cannot upload\" width=\"100\" height=\"100\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Price</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"price\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmaxlength=\"10\" placeholder=\"Enter Price\" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Name</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"names\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"Enter Name\" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Email</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"emails\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"Enter Email\" value=");
      out.print(email);
      out.write(" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Phone</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"phone\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"Enter phone\" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<br> <label class=\"checkbox-inline\"><input\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttype=\"checkbox\" value=\"\" name=\"availableonwhatsapp\">Available\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ton whatsapp</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-heading\">Enter a City</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"city\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tplaceholder=\"Enter city\" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-primary btn-lg\">SUBMIT</button>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</h3>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
