
<%@page import="com.oreilly.servlet.MultipartRequest,java.sql.*,java.io.*"%>
<html>
<body>
<% 
 String p_i_path=application.getRealPath("/pics");
out.println("path");
out.println(p_i_path);

MultipartRequest mpr=new MultipartRequest(request,"C:/Users/DELL/workspace/Shopee/WebContent/images");
 String p_i_name=mpr.getOriginalFileName("file");
 out.println("name");
 out.println(p_i_name);

 HttpSession sesss=request.getSession();
 String id=(String)sesss.getAttribute("id");

 try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	PreparedStatement pst=con.prepareStatement("update sw_products set p_i_name='"+p_i_name+"' where id='"+id+"'");
  
    pst.executeUpdate();
    con.close();
}
catch(Exception e)
{
	out.println(e);
}

out.println("images added successfully");
%>
</body>
</body>
</html>