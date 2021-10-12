/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.43
 * Generated at: 2021-10-12 03:00:47 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.shop.user.*;
import com.shop.user.Impl.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/Top.jsp", Long.valueOf(1634007625012L));
    _jspx_dependants.put("/script/index_crawler.js", Long.valueOf(1633397854567L));
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1633398328332L));
    _jspx_dependants.put("/header.jsp", Long.valueOf(1633398237611L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("com.shop.user");
    _jspx_imports_packages.add("com.shop.user.Impl");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>ThornBooks</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/common.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<div id=\"wrap\">\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t<header>\r\n");
      out.write("\t\t");
      out.write('\r');
      out.write('\n');

	String mem_id = (String)session.getAttribute("idKey");
	//관리자 페이지 추가를 위한 수정
	String mem_role = (String)session.getAttribute("roleKey");
	
	//my_page.jsp에서 잘라옴
	request.setCharacterEncoding("UTF-8");
	String mName = request.getParameter("name");
	MemberDto mDto = new MemberDto();
	mDto.setName(mName);
	MemberDao dao = new MemberDao();
	List memList = dao.listmembers(mDto);
	
	String id = "";
    String name = "";
    String role = "";
    
	for(int i = 0; i < memList.size(); i++){
		MemberDto dto = (MemberDto) memList.get(i);
		id = dto.getId();
        name = dto.getName();
        role = dto.getRole();
        //동명 이인이 있을 경우가 있기때문에 if문 사용
        if(id.equals(mem_id)){
        	break;
        }
    }
	
	String log="";
	if(mem_id == null) log ="<a href=login.jsp>로그인</a>";
	else log = "<a href=logout.do>로그아웃</a>";
	
	String mem="";
	if(role == null) mem ="<a href=my_page.jsp> 마이페이지 </a>";
	else mem = "<a href=mem_info.jsp> 관리자페이지 </a>";
	
	String noti="";
	if(role == null) noti ="<a href=admin_notice.jsp>공지사항</a>";
	else noti = "<a href=admin_notice.jsp>공지사항</a>";

      out.write("\r\n");
      out.write("<div class=\"gnb\">\r\n");
      out.write("\t<div class=\"gnb-inner\">\r\n");
      out.write("\t\t");
      out.print(noti);
      out.write("\r\n");
      out.write("\t\t");
      out.print(log);
      out.write("\r\n");
      out.write("\t\t<a href=\"join.jsp\">회원가입</a>\r\n");
      out.write("\t\t");
      out.print(mem);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t<a href=\"index.jsp\">\r\n");
      out.write("\t\t\t\t<h2>ThornBooks</h2>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"search\">\r\n");
      out.write("\t\t\t<input type=\"text\" placeholder=\"Search\">\r\n");
      out.write("\t\t\t<button></button>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</header>");
      out.write("\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"books\">\n");
      out.write("\t\t\t\t<div class=\"book\">\n");
      out.write("\t\t\t\t\t<a href=\"#none\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/book1.jpg\" alt=\"book1\">\n");
      out.write("\t\t\t\t\t\t<span class=\"book-info\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"book-title\">하늘위로 높이 뛰어봐</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"author\">저자</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"summary\">줄거리</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"price\">가격</span>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"book\">\n");
      out.write("\t\t\t\t\t<a href=\"#none\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/book2.jpg\" alt=\"book2\">\n");
      out.write("\t\t\t\t\t\t<span class=\"book-info\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"book-title\">깊고 깊은 산골짜기에</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"author\">저자</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"summary\">줄거리</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"price\">가격</span>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"book\">\n");
      out.write("\t\t\t\t\t<a href=\"#none\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/book3.jpg\" alt=\"book3\">\n");
      out.write("\t\t\t\t\t\t<span class=\"book-info\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"book-title\">꽃잎이 떨어지면</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"author\">저자</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"summary\">줄거리</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"price\">가격</span>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"book\">\n");
      out.write("\t\t\t\t\t<a href=\"#none\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/book4.jpg\" alt=\"book4\">\n");
      out.write("\t\t\t\t\t\t<span class=\"book-info\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"book-title\">봄처럼 너에게 간다</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"author\">저자</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"summary\">줄거리</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"price\">가격</span>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"book\">\n");
      out.write("\t\t\t\t\t<a href=\"#none\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/book5.jpg\" alt=\"book5\">\n");
      out.write("\t\t\t\t\t\t<span class=\"book-info\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"book-title\">프레임형 무료표지</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"author\">저자</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"summary\">줄거리</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"price\">가격</span>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"book\">\n");
      out.write("\t\t\t\t\t<a href=\"#none\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/book6.jpg\" alt=\"book6\">\n");
      out.write("\t\t\t\t\t\t<span class=\"book-info\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"book-title\">내가 담은 글</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"author\">저자</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"summary\">줄거리</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"price\">가격</span>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("<footer>\r\n");
      out.write("\t<div class=\"footer-inner\">\r\n");
      out.write("\t\t<div class=\"footer-logo\">\r\n");
      out.write("\t\t\t<a href=\"index.html\">ThornBooks</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"copyright\">\r\n");
      out.write("\t\t\t<p>\r\n");
      out.write("\t\t\t\t사업자 등록번호: 1234-1234<br> 대표전화:1234-1234<br> 인천광역시\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"sns\">\r\n");
      out.write("\t\t\t<a href=\"#none\"><img src=\"images/facebook.png\" alt=\"facebook\"></a>\r\n");
      out.write("\t\t\t<a href=\"#none\"><img src=\"images/kakao-talk.png\" alt=\"kakao-talk\"></a>\r\n");
      out.write("\t\t\t<a href=\"#none\"><img src=\"images/twitter.png\" alt=\"twitter\"></a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<script src=\"script/jquery-3.5.1.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\">");
      out.write("const request = require('request');\r\n");
      out.write("const cheerio = require('cheerio');\r\n");
      out.write("const iconv = require('iconv-lite');\r\n");
      out.write("\r\n");
      out.write("const getNews = () => {\r\n");
      out.write("    request(\r\n");
      out.write("    {\r\n");
      out.write("      url: \"http://book.interpark.com/display/collectlist.do?_method=bestsellerHourNew&bookblockname=b_gnb&booklinkname=%BA%A3%BD%BA%C6%AE%C1%B8&bid1=w_bgnb&bid2=LiveRanking&bid3=main&bid4=001\",\r\n");
      out.write("      method: \"GET\",\r\n");
      out.write("      encoding: null,\r\n");
      out.write("    },\r\n");
      out.write("    (error, response, body) => {\r\n");
      out.write("      if (error) {\r\n");
      out.write("        console.error(error);\r\n");
      out.write("        return;\r\n");
      out.write("      }\r\n");
      out.write("      if (response.statusCode === 200) {\r\n");
      out.write("        console.log(\"response ok\");\r\n");
      out.write("        const bodyDecoded = iconv.decode(body, \"euc-kr\");\r\n");
      out.write("        const $ = cheerio.load(bodyDecoded);\r\n");
      out.write("        \r\n");
      out.write("        const img = $(\r\n");
      out.write("            \".coverImage > label > a\"\r\n");
      out.write("        ).toArray();\r\n");
      out.write("\r\n");
      out.write("        const list_text_inner_arr = $(\r\n");
      out.write("          \".rankBestContentList > ol > li > div\"\r\n");
      out.write("        ).toArray();\r\n");
      out.write("  \r\n");
      out.write("        const result = [];\r\n");
      out.write("        list_text_inner_arr.forEach((div) => {\r\n");
      out.write("\t\t\t\r\n");
      out.write("          const aFirst = $(div).find(\"a\").first(); // ì²«ë²ì§¸ <a> íê·¸\r\n");
      out.write("          const path = aFirst.attr(\"href\"); // ì²«ë²ì§¸ <a> íê·¸ url\r\n");
      out.write("          const url = `http://book.interpark.com/display/collectlist.do?_method=bestsellerHourNew&bookblockname=b_gnb&booklinkname=%BA%A3%BD%BA%C6%AE%C1%B8&bid1=w_bgnb&bid2=LiveRanking&bid3=main&bid4=001");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("`; // ëë©ì¸ì ë¶ì¸ url ì£¼ì\r\n");
      out.write("\t\t\t\r\n");
      out.write("          const title = aFirst.text().trim();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t  const aLast = $(div).find(\"a\").last(); // ëë²ì§¸ <a>íê·¸\r\n");
      out.write("          const author = aLast.text().trim();\r\n");
      out.write("            \r\n");
      out.write("          const img1 = $(div).find(\"img\").first();\r\n");
      out.write("          const imgpath = img1.attr(\"src\");\r\n");
      out.write("          const imgurl = `http://book.interpark.com/display/collectlist.do?_method=bestsellerHourNew&bookblockname=b_gnb&booklinkname=%BA%A3%BD%BA%C6%AE%C1%B8&bid1=w_bgnb&bid2=LiveRanking&bid3=main&bid4=001");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${imgpath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("`;\r\n");
      out.write("          const imgcon = img1.text().trim();\r\n");
      out.write("          \r\n");
      out.write("          result.push({\r\n");
      out.write("            url,\r\n");
      out.write("            title,\r\n");
      out.write("            author,\r\n");
      out.write("            imgcon,\r\n");
      out.write("          });\r\n");
      out.write("\t\t\t$('.book-title').text(result[0].author);\r\n");
      out.write("\t\t\t\r\n");
      out.write("        });\r\n");
      out.write("        console.log(result[0].author);\r\n");
      out.write("      }\r\n");
      out.write("    });\r\n");
      out.write("  };\r\n");
      out.write("  getNews();");
      out.write("</script>\n");
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
