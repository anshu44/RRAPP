<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Bootstrap Core CSS -->
 <link href="<%=request.getContextPath()%>/mainintro/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
   <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/mainintro/css/stylish-portfolio.css" rel="stylesheet" type="text/css"/>
    <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="/jsp/jquery.validate.js"></script>
     <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/mainintro/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    
 <title>Register</title>
 <script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$(document).ready(function() {
		// validate the comment form when it is submitted
	//$("#registerForm").validate();

		// validate signup form on keyup and submit
		$("#registerForm").validate({
			rules: {
				emailId : {
					required: true,
					email: true
				},
				userName: {
					required: true,
					minlength: 2
				},
				
				password: {
					required: true,
					minlength: 5
				},
				Confirmpassword: {
					required: true,
					minlength: 5,
					equalTo: "#password"
				},
				
				
				
			},
			messages: {
				
				userName: {
					required: "Please enter a username",
					minlength: "Your username must consist of at least 2 characters"
				},
				password: {
					required: "Please provide a password",
					minlength: "Your password must be at least 5 characters long"
				},
				Confirmpassword: {
					required: "Please provide a password",
					minlength: "Your password must be at least 5 characters long",
					equalTo: "Please enter the same password as above"
				},
				emailId: "Please enter a valid email address",
				
			}
		});
	});
	</script>
 </head>
 
<body>

<form  method="post" action="Register" name="registerForm"  id="registerForm" class="form-horizontal" role="form">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="emailId" name="emailId" placeholder="Enter email"><br>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Username:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"id="userName" name="userName" placeholder="User name"><br>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="password" name="password" placeholder="Enter password"><br>
    </div>
  </div>
  
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Confirm Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="Confirmpassword" name="Confirmpassword" placeholder="Enter password"><br>
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
      <a href="<%=request.getContextPath()%>/jsp/main.jsp"><sup><h4>Cancel</h4></sup></a>
    </div>
  </div>
</form>

<%-- <div class="class="col-lg-7">
<div class="mainframe">
 <form  method="post" action="Register" name="registerForm" >  
    	<br><br><br>
    	
	<div class="form-group">
      	<div class="col-lg-5">
     		<div class="input-group">     			
       			<input type="text" class="form-control" id="userName" placeholder="Type UserName here" name="userName">
       		 </div>       							
       							  
      	</div>
      	
      	<br><br>
      </div>	 
      
	<div class="form-group">
      	<div class="col-lg-5">
     		<div class="input-group">
     			
       			<input type="password" class="form-control" placeholder="********" name="password">
       		 </div>       							
       							  
      	</div>
      	<br><br>
      </div>
      
      <div class="form-group">
      	<div class="col-lg-5">
     		<div class="input-group">
     			
       			<input type="password" class="form-control" placeholder="********" name="Confirmpassword">
       		 </div>       							
       							  
      	</div>
      	
      	<br><br>
      </div>
      
      
      <div class="form-group">
      	<div class="col-lg-5">
     		<div class="input-group">     			
       			<input type="text" class="form-control" id="emailId" placeholder="Type Email id here" name="emailId">
       		 </div>       							
       							  
      	</div>
      	
      	<br><br>
      </div>
      
      
      
      
	<div class="form-group">
      	<div class="col-lg-8 col-lg-offset-0"><input type="button" value="Register"  class="btn btn-primary"  />
       	<input type="reset" class="btn btn-default" name="Reset"/>
       	<a href="<%=request.getContextPath()%>/jsp/main.jsp"><sup><h4>Cancel</h4></sup></a>
     	 </div>
     </div>

		</form>
	</div>
</div>--%>

</body>
</html>