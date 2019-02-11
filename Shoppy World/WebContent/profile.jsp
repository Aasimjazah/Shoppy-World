
<%@ include file="header1.jsp" %>
					
					
					
					
					
					
						
<%!
 String first_name;
 String last_name;
 String email;
 String password;
 String nickname;
 String contact;
%>

<%

 String email=(String)s.getAttribute("email");
String password=(String) s.getAttribute("password");
  try{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	
	Statement stmt=con.createStatement();
	
	ResultSet rs=stmt.executeQuery("select vendor_email,vendor_name,vendor_contact,vendor_password from sw_vendors where vendor_email='"+email+"'and vendor_password='"+password+"'");
	 if(rs.next())
	   {
			 email=rs.getString(1);
			 name=rs.getString(2);
			 contact=rs.getString(3);
			 password=rs.getString(4);
	   }
	 else
	   {
			 out.println(email);
	   }
   }
  catch(Exception e)
    {
	  out.println(e);
    }
%>
						
						
						
						
<br><br><br>
<div class="container">
	<div class="row">
		<div class="col-md-12">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>Your Profile</h4>
		                    <hr>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-md-12">
		                    <form action="update_profile.jsp" method="post">
                           
                             
                              <div class="form-group row">
                                <label for="name" class="col-4 col-form-label">Name</label> 
                                <div class="col-8">
                                  <input id="name" name="name" value="<%=name %>" class="form-control here" type="text">
                                </div>
                                </div>
                             
                            
                              
                              <div class="form-group row">
                                <label for="email" class="col-4 col-form-label">Email*</label> 
                                <div class="col-8">
                                  <input id="email" name="email" value="<%=email %>" class="form-control here" required="required" type="text">
                                </div>
                              </div>
                            
                              <div class="form-group row">
                                <label for="publicinfo" class="col-4 col-form-label">Contact</label> 
                                <div class="col-8">
                                  <input id="contact" name="contact" value="<%=contact %>" class="form-control here" type="text">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="newpass" class="col-4 col-form-label">password</label> 
                                <div class="col-8">
                                  <input id="newpass" name="password" value="<%=password %>" class="form-control here" type="text">
                                </div>
                              </div> 
                              <div class="form-group row">
                                <div class="offset-4 col-8">
                                  <button name="submit" type="submit" class="btn btn-primary">Update My Profile</button>
                                </div>
                              </div>
                            </form>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</div>
	</div>
</div>
						
						
						
						
						
						
						 
<%@ include file="footer.jsp" %> 