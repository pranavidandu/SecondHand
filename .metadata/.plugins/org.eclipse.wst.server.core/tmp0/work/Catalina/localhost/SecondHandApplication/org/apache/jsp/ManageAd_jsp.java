/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.62
 * Generated at: 2015-06-19 21:07:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ListIterator;
import java.util.List;
import com.bvrith.dao.AdDAO;
import com.bvrith.beans.AdsBean;

public final class ManageAd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	String category = request.getParameter("category");
	AdDAO submitAnAdDAO = new AdDAO();
	List<AdsBean> lst = submitAnAdDAO.listAds(category);
	ListIterator<AdsBean> list = lst.listIterator();

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
      out.write("\t\t\t\t<li class=\"active\"><a href=\"submitanad.jsp\"><button\n");
      out.write("\t\t\t\t\t\t\ttype=\"button\" class=\"btn btn-success btn-lg\">Submit An\n");
      out.write("\t\t\t\t\t\t\tAd</button></a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t");

				if (email == null) {
						out.print("<ul class=\"nav navbar-nav navbar-right\">");
						out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px;\"></span> Sign Up</a></li>");
						out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px;\"></span>Login</a></li>");
						out.print("</ul>");
					} else {
						out.print(email);
						out.print("<ul class = \"nav navbar-nav navbar-right\">");

						out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px;\"></span>Logout</a></li>");
						out.print("</ul>");
					}
			
      out.write("\n");
      out.write("\n");
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
      out.write("\t<form>\n");
      out.write("\t\t<form>\n");
      out.write("\t\t\t<table class=\"table table-hover\" border=3>\n");
      out.write("\t\t\t\t<tr class=\"success\">\n");
      out.write("\t\t\t\t\t<td><h4>Ad Title</h4></td>\n");
      out.write("\t\t\t\t\t<td><h4>Category</h4></td>\n");
      out.write("\t\t\t\t\t<td><h4>Ad Description</h4></td>\n");
      out.write("\t\t\t\t\t<td><h4>Price</h4></td>\n");
      out.write("\t\t\t\t\t<td><h4>Name</h4></td>\n");
      out.write("\t\t\t\t\t<td><h4>Email</h4></td>\n");
      out.write("\t\t\t\t\t<td><h4>Phone</h4></td>\n");
      out.write("\t\t\t\t\t<td><h4>Whatsapp</h4></td>\n");
      out.write("\t\t\t\t\t<td><h4>City</h4></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<div class=\"showcase\">\n");
      out.write("\t\t\t\t\t");

						String whatsapp = "";
									while (list.hasNext()) {
										AdsBean submitAnAdBean = list.next();
										out.print("<table class=" + "table table-bordered table-hover>"
												+ "");
										out.print("<tr>");
										out.print("<td> <h4>Ad Title:</h4>"
												+ submitAnAdBean.getAdtitle() + "</td>");
										out.print("<td> <h4>Category:</h4>"
												+ submitAnAdBean.getCategory() + "</td>");
										out.print("</tr>");
										out.print("<tr>");
										out.print("<td> <h4>Ad Description:</h4>"
												+ submitAnAdBean.getAddescription() + "</td>");
										out.print("<td>" + submitAnAdBean.getPrice() + "</td>");
										out.print("</tr>");
										out.print("<tr>");
										out.print("<td> <h4>Name:</h4>" + submitAnAdBean.getName()
												+ "</td>");
										out.print("<td> <h4>Email:</h4>" + submitAnAdBean.getEmail()
												+ "</td>");
										out.print("<td> <h4>Phone:</h4>" + submitAnAdBean.getPhone()
												+ "</td");
										out.print("</tr>");
										out.print("<tr>");
										if (submitAnAdBean.getWhatsapp().equalsIgnoreCase("y")) {
											whatsapp = "Avaliable";
										} else {
											whatsapp = "Not Avaliable";
										}
										out.print("<td> <h4>WhatsApp:</h4>" + whatsapp + "</td>");
										out.print("<td> <h4>City:</h4>" + submitAnAdBean.getCity()
												+ "</td>");
										out.print("</tr>");
										out.print("</table>");
										out.print("<br> <br> <br> ");
									}
					
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t</form>\n");
      out.write("\t\t</table>\n");
      out.write("\t</form>\n");
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
