/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.62
 * Generated at: 2015-06-19 23:36:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class books_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\tsrc=\"/SecondHandApplication/WebContent/styling.css\">\n");

	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");

      out.write("\n");
      out.write("<title>SecondHand</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write(".menu {\n");
      out.write("\tfloat: none;\n");
      out.write("\theight: 80px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".account {\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: 25px;\n");
      out.write("\tright: 289px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".user1 {\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: 31px;\n");
      out.write("\tright: 410px;\n");
      out.write("}\n");
      out.write("</style>\n");
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
      out.write("\t\t\t");

			if (email == null) {
				out.print("<ul class=\"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">SignUp</p></a></li>");
				out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Login</p></a></li>");
				out.print("</ul>");
			}
			else {
				out.print("<ul class = \"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"ManageAd.jsp\"><button type=\"button\" class=\"btn btn-success btn-lg\">Manage Your Ads</button></a></li>");
				out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Logout</p></a></li>");
				out.print("</ul>");
			}
			
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t</nav>\n");
      out.write("\t<div class=\"page-header header\">\n");
      out.write("\t\t<h1>\n");
      out.write("\t\t\t<p class=\"sansserif\" align=\"center\">SecondHand.com</p>\n");
      out.write("\t\t</h1>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"col-md-3\">\n");
      out.write("\t\t<ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("\t\t\t<li><a href=\"mobiles.jsp\">Mobiles and Tablets</a></li>\n");
      out.write("\t\t\t<li><a href=\"electronics.jsp\">Electronics and Appliances</a></li>\n");
      out.write("\t\t\t<li><a href=\"vehicles.jsp\">Vehicles</a></li>\n");
      out.write("\t\t\t<li><a href=\"home.jsp\">Home & Furniture</a></li>\n");
      out.write("\t\t\t<li><a href=\"animals.jsp\">Animals</a></li>\n");
      out.write("\t\t\t<li class=\"active\"><a href=\"books.jsp\">Books, Sports &\n");
      out.write("\t\t\t\t\tHobbies</a></li>\n");
      out.write("\t\t\t<li><a href=\"fashion.jsp\">Fashion & Beauty</a></li>\n");
      out.write("\t\t\t<li><a href=\"kids.jsp\">Kids & Baby Products</a></li>\n");
      out.write("\t\t\t<li><a href=\"services.jsp\">Services</a></li>\n");
      out.write("\t\t\t<li><a href=\"jobs.jsp\">Jobs</a></li>\n");
      out.write("\t\t\t<li><a href=\"realestate.jsp\">Real Estate</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("\t<h3>Books, Sports & Hobbies</h3>\n");
      out.write("\t<hr>\n");
      out.write("\t<div>\n");
      out.write("\t\t<table>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td><img src=\"./IMG/books.png\"\n");
      out.write("\t\t\t\t\tstyle=\"width: 140px; height: 120px;\"> <br> <br>\n");
      out.write("\t\t\t\t\t<h4 align=\"center\">Books</h4></td>\n");
      out.write("\t\t\t\t<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("\t\t\t\t<td><img src=\"./IMG/guitar.png\"\n");
      out.write("\t\t\t\t\tstyle=\"width: 140px; height: 120px;\"> <br> <br>\n");
      out.write("\t\t\t\t\t<h4 align=\"center\">Musical Instruments</h4></td>\n");
      out.write("\t\t\t\t<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("\t\t\t\t<td><img src=\"./IMG/ball.png\"\n");
      out.write("\t\t\t\t\tstyle=\"width: 180px; height: 120px;\"> <br> <br>\n");
      out.write("\t\t\t\t\t<h4 align=\"center\">Sports</h4></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td><img src=\"./IMG/dumbell.png\"\n");
      out.write("\t\t\t\t\tstyle=\"width: 140px; height: 120px;\"> <br> <br>\n");
      out.write("\t\t\t\t\t<h4 align=\"center\">Fitness</h4></td>\n");
      out.write("\t\t\t\t<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("\t\t\t\t<td><img src=\"./IMG/coins.png\"\n");
      out.write("\t\t\t\t\tstyle=\"width: 140px; height: 120px;\"> <br> <br>\n");
      out.write("\t\t\t\t\t<h4 align=\"center\">Coins and Collectibles</h4></td>\n");
      out.write("\t\t\t\t<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("\t\t\t\t<td><img src=\"./IMG/hobby.png\"\n");
      out.write("\t\t\t\t\tstyle=\"width: 140px; height: 120px;\"> <br> <br>\n");
      out.write("\t\t\t\t\t<h4 align=\"center\">Other Hobbies</h4></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t</table>\n");
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
