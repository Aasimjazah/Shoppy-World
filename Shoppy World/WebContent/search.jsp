<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
HttpSession sess;
%>
<%

String search=request.getParameter("search");
out.println(search);

if(search.equals("all"))
{

	if(!(sess.isNew()))
	{
	sess.setAttribute("search",null);
	}
	
	}
else
{
	sess=request.getSession();
	sess.setAttribute("search",search);

}
response.sendRedirect("index1.jsp"); 
%>

</body>
</html>