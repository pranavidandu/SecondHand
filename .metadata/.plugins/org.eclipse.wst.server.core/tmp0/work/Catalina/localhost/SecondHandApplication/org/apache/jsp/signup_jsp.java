/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.62
 * Generated at: 2015-06-19 10:33:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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

	String msg = request.getParameter("msg");
	if (msg != null) {
		out.print("<h1>" + msg + "</h1>");
	}
	String pwdmsg = request.getParameter("pwdmssg");
	if (pwdmsg != null) {
		out.print("<h3>" + pwdmsg + "</h3>");
	}

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\tsrc=\"/SecondHandApplication/WebContent/styling.css\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>SecondHand</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<nav class=\"navbar navbar-inverse\">\n");
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
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t</nav>\n");
      out.write("\t<div class=\"page-header header\">\n");
      out.write("\t\t<h1>\n");
      out.write("\t\t\t<p class=\"sansserif\" align=\"center\">SecondHand.com</p>\n");
      out.write("\t\t</h1>\n");
      out.write("\t</div>\n");
      out.write("\t<center>\n");
      out.write("\t\t<h2>SignUp here</h2>\n");
      out.write("\t</center>\n");
      out.write("\t<br>\n");
      out.write("\t<form class=\"form-horizontal\" action=\"SignupController\">\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t<label class=\"control-label col-md-4\">User:</label>\n");
      out.write("\t\t\t<div class=\"col-md-offset-4 col-md-6\">\n");
      out.write("\t\t\t\t<div class=\"input-group input-group-lg\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<span class=\"input-group-addon\"> <span\n");
      out.write("\t\t\t\t\t\tclass=\"glyphicon glyphicon-envelope\" style=\"color: #31B94D\"></span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</span> <input type=\"email\" name=\"email\" class=\"form-control\"\n");
      out.write("\t\t\t\t\t\tplaceholder=\"Enter email\" required>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- <input type=\"email\" name = \"email\" class=\"form-control\" placeholder=\"Enter email\" required> -->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t<label class=\"control-label col-md-4\" for=\"pwd\">Password:</label>\n");
      out.write("\t\t\t<div class=\"col-md-offset-4 col-md-6\">\n");
      out.write("\t\t\t\t<div class=\"input-group input-group-lg\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<span class=\"input-group-addon\"> <span\n");
      out.write("\t\t\t\t\t\tclass=\"glyphicon glyphicon-lock\" style=\"color: #31B94D\"></span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</span> <input type=\"password\" class=\"form-control\" name=\"password\"\n");
      out.write("\t\t\t\t\t\tplaceholder=\"Enter password\" required>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t<label class=\"control-label col-md-4\" for=\"pwd\">Re-enter\n");
      out.write("\t\t\t\tPassword:</label>\n");
      out.write("\t\t\t<div class=\"col-md-offset-4 col-md-6\">\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"input-group input-group-lg\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<span class=\"input-group-addon\"> <span\n");
      out.write("\t\t\t\t\t\tclass=\"glyphicon glyphicon-lock\" style=\"color: #31B94D\"></span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</span> <input type=\"password\" class=\"form-control\" name=\"password1\"\n");
      out.write("\t\t\t\t\t\tplaceholder=\"Enter password\" required>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t<div class=\"col-md-offset-4 col-md-7\">\n");
      out.write("\t\t\t\t<button type=\"submit\" class=\"btn btn-success\">Sign Up</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</form>\n");
      out.write("\t<center></center>\n");
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
