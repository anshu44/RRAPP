<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Bootstrap Core CSS -->
 <link href="<%=request.getContextPath()%>/mainintro/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
   <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/mainintro/css/stylish-portfolio.css" rel="stylesheet" type="text/css"/>
     <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/mainintro/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
 <title>Welcome to  Recipe and Restaurant Management</title>
        
      
</head>



<body>

 <!-- Header -->
    <header id="top" class="header">
        <div  >
         <center>   <h1 style="font-family:purisa"><i style="color:white">Eat In</i></h1>
            </center>
            <br>
     
            <center><a href="#about" class="btn btn-dark btn-lg"><i style="font-family:purisa"> <b>Enter</b></i></a></center>
        </div>
    </header>


    <!-- About -->
 	<div class="col-lg-4"></div>
 	<div class="col-lg-6">
 	<section id="about" class="about"  >
 	
    <form  method="post" action="Login" name="loginForm" >  
    	<br><br><br>
		<div class="form-group">
      	
      	<div class="col-lg-6">
     		     <center class="text-danger"> 	<label class="col-lg-12 control-label"><s:property value="message"/></label></center>						  
      	</div>
      	<br><br>
      </div>
	
	<div class="form-group">
      	<div class="col-lg-5">
     		<div class="input-group">
     			<span class="input-group-addon" id="basic-addon1">
     			  <span class="glyphicon glyphicon-user" aria-hidden="true"></span> 
     			</span>
       			<input type="text" class="form-control" id="userName" placeholder="Type UserName here" name="userName">
       		 </div>       							
       							  
      	</div>
      	<div class="col-lg-5"><label id="loginid" class="text-danger"></label></div>
      	<br><br>
      </div>	 
      
	<div class="form-group">
      	<div class="col-lg-5">
     		<div class="input-group">
     			<span class="input-group-addon" id="basic-addon1">
     			  <span class="glyphicon glyphicon-lock" aria-hidden="true"></span> 
     			</span>
       			<input type="password" class="form-control" placeholder="********" name="password">
       		 </div>       							
       							  
      	</div>
      	<div class="col-lg-5"><label id="passwordError" class="text-danger"></label></div>
      	<br><br>
      </div>
      
	<div class="form-group">
      	<div class="col-lg-8 col-lg-offset-0">
      	<input type="button" value="SignIn"  class="btn btn-primary" onClick="validate()" />
       	<input type="reset" class="btn btn-default" name="Reset"/>
       	<a href="<%=request.getContextPath()%>/jsp/Register.jsp"><sup><h5>Sign Up ?</h5></sup></a>
     	 </div>
     </div>

	</form>
	</section>
	
	</div>
	<div class="col-lg-2"></div>
	
	
	
    <!-- Footer -->
    <footer>
    	<br><br><br><br><br><br><br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-lg-offset-1 text-center">
                	<br><br><br><br>
                    <h4><strong>Recipe and Restaurant Management</strong>
                    </h4>
                    <p>IIIT Bangalore </p>
                    <p>Electronic city, 26/c</p>
					<p>rrapp.iiitb@gmail.com </p>
                    <p><a href="https://lms.iiitb.ac.in/moodle">moodle link</a></p>
                     
                    <ul class="list-inline">
                        <li>
                            <a href="https://www.facebook.com/"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="https://twitter.com/?lang=en"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                        </li>
                       
                    </ul>
                    <hr class="small">
                    <p class="text-muted">Copyright &copy; RRM 2015</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="mainintro/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="mainintro/js/bootstrap.min.js"></script>

 <script>
    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    </script>

<script type="text/javascript">
function validate()
{

	var userName=document.loginForm.userName.value;
	var password=document.loginForm.password.value;
    var flag=1;
  
    if(userName=="")
    {
    	document.getElementById('loginid').innerHTML="Please enter UserName";
    	document.loginForm.userName.focus();
    	flag=0;
    		return false;
    }
    else
   	{
    	document.getElementById('loginid').innerHTML="";

   	}
    if(password=="")
    {
    	document.getElementById('passwordError').innerHTML="Please enter Password";
    	document.loginForm.password.focus();
    	flag=0;
    		return false;
    }
    else
    {
    	document.getElementById('loginid').innerHTML="";
    	
    }	
    if(flag==1)
    {
    	document.loginForm.submit();
    }
}   

</script>

 





</body>
</html>