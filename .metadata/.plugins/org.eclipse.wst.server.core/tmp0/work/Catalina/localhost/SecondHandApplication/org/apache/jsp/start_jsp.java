/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.62
 * Generated at: 2015-06-19 22:59:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;

public final class start_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write('\n');

	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");

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
      out.write("<style type=\"text/css\">\n");
      out.write("</style>\n");
      out.write("<title>Second Hand</title>\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\tsrc=\"/SecondHandApplication/WebContent/styling.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<nav class=\"navbar navbar-inverse\">\n");
      out.write("\t<div class=\"container-fluid \">\n");
      out.write("\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\n");
      out.write("\t\t\t\t<li class=\"active\"><a href=\"ads.jsp\"><button\n");
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
				} else {
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"ManageAd.jsp\"><button type=\"button\" class=\"btn btn-success btn-lg\">Manage Your Ads</button></a></li>");
					out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Logout</p></a></li>");
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
      out.write("\t<div class=\"dropdown\" style=\"font-size: 20px;\" align=\"right\">\n");
      out.write("\t\t<input name=\"item\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><span\n");
      out.write("\t\t\tclass=\"caret\"></span>\n");
      out.write("\t\t<ul class=\"dropdown-menu dropdown-menu-right\">\n");
      out.write("\t\t\t<li><a tabindex=\"-1\" href=\"show.jsp?category=Mobile\">Mobiles\n");
      out.write("\t\t\t\t\t& Tablets</a></li>\n");
      out.write("\t\t\t<li><a tabindex=\"-1\" href=\"show.jsp?category=RealEstate\">Real\n");
      out.write("\t\t\t\t\tEstate</a></li>\n");
      out.write("\t\t\t<li><a tabindex=\"-1\" href=\"show.jsp?category=Books\">Books</a></li>\n");
      out.write("\t\t\t<li><a tabindex=\"-1\" href=\"show.jsp?category=Books\">Books</a></li>\n");
      out.write("\t\t\t<li class=\"divider\"></li>\n");
      out.write("\t\t\t<li><a tabindex=\"-1\" href=\"mobiles.jsp\">All Categories</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t<button type=\"submit\" class=\"btn btn-xs btn-success\">\n");
      out.write("\t\t\t<span class=\"glyphicon glyphicon-search\"\n");
      out.write("\t\t\t\tstyle=\"color: white; font-size: 30px;\"></span>\n");
      out.write("\t\t</button>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<div class=\"container pagediv\">\n");
      out.write("\t<h3>To buy or find anything select a category below :</h3>\n");
      out.write("\t\t<div class=\"container-fluid\" align = \"center\" style = \"color: green;\">\t\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"mobiles.jsp\"><img src=\"./IMG/mobile.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 150px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Mobiles & Tablets</h4></a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"electronics.jsp\"><img src=\"./IMG/laptop.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 150px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Electronics</h4></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"vehicles.jsp\"><img src=\"./IMG/car.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 150px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Vehicles</h4></a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t&nbsp;\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"home.jsp\"><img src=\"./IMG/sofaa.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 150px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Home & furniture</h4></a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"animals.jsp\"><img src=\"./IMG/dog.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 150px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Animals</h4></a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"books.jsp\"><img src=\"./IMG/books.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 150px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Sports & Hobbies</h4></a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t&nbsp;\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"fashion.jsp\"><img src=\"./IMG/watch.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 100px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Fashion & Beauty</h4></a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"kids.jsp\"><img src=\"./IMG/toys.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 150px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Kid Products</h4></a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-3\" style=\"background-color: #DFF2BF;\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t<a href=\"services.jsp\"><img src=\"./IMG/chef.png\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 120px; height: 130px;\"> <br>\n");
      out.write("\t\t\t\t\t\t\t<h4>Services</h4></a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<table>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td><footer class=\"footer\">\n");
      out.write("\t\t\t\t<h4 align=\"center\"\n");
      out.write("\t\t\t\t\tstyle=\"color: black; position: absolute; top: 900px; left: 50px;\">Designed\n");
      out.write("\t\t\t\t\tand Developed by Flora Moses, Pranavi Dandu and Naga Purnika <br /> from\n");
      out.write("\t\t\t\t\tComputer Science and Engineering Department</h4>\n");
      out.write("\t\t\t\t</footer>\n");
      out.write("\t\t</tr>\n");
      out.write("\t</table>\n");
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
