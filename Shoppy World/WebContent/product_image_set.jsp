<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="upload_profile_pic.jsp" method="post" enctype="multipart/form-data">
			         <input type="file" name="file" >
			         <input type="submit" value="upload">
			        </form>
<%!
String id;
%>
<%
String id=request.getParameter("id");
HttpSession sesss=request.getSession();
sesss.setAttribute("id",id);
%>
</body>
</html>