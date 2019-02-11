 <%@ include file="header.jsp" %>
    <div class="container mt-3">
    <%!
HttpSession s;

%>

<%
s=request.getSession();
String msg1=(String)s.getAttribute("msg");
if(msg1=="success")
{
%>
<span class="text text-success bg-muted">mail sent successfully..</span>

<%
s.invalidate();
}
%>
    	   <div class="row">
    	  

  

    	   	   <div class="col-sm-8">

    	   	   	<form action="sent.jsp">
  <div class="form-row">
     <div class="form-group col-md-6">
      <label for="inputPassword4">Name</label>
      <input type="text" class="form-control" id="inputPassword4" name="name" placeholder="Enter Name">
    </div>


  
  <div class="form-group col-md-6">
    <label for="inputAddress">Contact</label>
    <input type="text" class="form-control" id="inputAddress" name="contact" placeholder="Enter Contact">
  </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
    <label for="inputAddress">Address1</label>
    <input type="text" class="form-control" id="inputAddress" name="address" placeholder="Enter Residental Address">
  </div>
  

  <div class="form-group col-md-6">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" name="address2" placeholder="Enter your second Address">
  </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" name="city" id="inputCity">
      
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control" name="state">
        <option selected>Choose...</option>
        <option>Andra Pradesh</option>
         <option>Arunachal Pradesh</option>
          <option>Assam</option>
           <option>Bihar</option>
            <option>Chhattisgarh</option>
             <option>Goa</option>
              <option>Gujarat</option>
               <option>Haryana</option>
                <option>Himachal Pradesh</option>
                 <option>Jammu and Kashmir</option>
                  <option>Jharkhand</option>
                   <option>Karnataka</option>
                    <option>Kerala</option>
                     <option>Madya Pradesh</option>
                      <option>Maharashtra</option>
                       <option>Manipur</option>
                        <option>Meghalaya</option>
                         <option>Mizoram</option>
                          <option>Nagaland</option>
                           <option>Orissa</option>
                            <option>Punjab</option>
                             <option>Rajasthan</option>
                              <option>Sikkim</option>
                               <option>Tamil Nadu</option>
                                <option>Telagana</option>
                                 <option>Tripura</option>
                                  <option>Uttaranchal</option>
                                   <option>Uttar Pradesh</option>
                                    <option>West Bengal</option>
                                     <option>Andaman and Nicobar Islands</option>
                                      <option>Chandigarh</option>
                                       <option>Dadar and Nagar Haveli</option>
                                        <option>Daman and Diu</option>
                                         <option>Delhi</option>
                                          <option>Lakshadeep</option>
                                           <option>Pondicherry</option>
                           
                         
        
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" name="zip" id="inputZip">
    </div>
    
     <div class="form-group col-md-2">
      <label for="inputZip"></label>
      <textarea name="queries" rows=5 cols=50 placeholder="write your queries here..."></textarea>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Send details</button>

</form>
    	   	   	
    	   	   </div>


    	   	   <!-- right card starts here in form -->
    	   	   <div class="col-sm-4"> 
    	   	   	
                      <div class="card">
					  <img class="card-img-top" src="images/contactimg.jpeg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn btn-primary">Go somewhere</a>
					  </div>
					</div>
    	   	   </div>
    	   	   <!-- right card ends here -->
    	   	   
    	   </div>
    	

    </div>

   <!--contact form ends here  -->

<%@ include file="footer.jsp" %>
   