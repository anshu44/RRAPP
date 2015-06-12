<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <link href="<%=request.getContextPath()%>/mainintro/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
   <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/mainintro/css/stylish-portfolio1.css" rel="stylesheet" type="text/css"/>
     <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/mainintro/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>

</head>
<body>

 <div class="container"  background-size: cover;"> 

<s:property value="userName"/>
<center>
<form >

<fieldset>

<!-- Form Name -->
<legend><h3><I>Search By :</I></h3></legend>

<!-- Button -->

<br>
<div>
 <a class="btn btn-large btn-info" href="<%=request.getContextPath()%>/jsp/welcome.jsp">Search By Ingredient</a>
</div>
<!-- Button -->

<br>
<div>
 <a class="btn btn-large btn-info" href="<%=request.getContextPath()%>/jsp/welcome.jsp">Search By Cooking Time</a>
</div>
<!-- Button -->
	
<br>
<div>
 <a class="btn btn-large btn-info" href="<%=request.getContextPath()%>/jsp/welcome.jsp">Search By Dish Origin</a>
</div>
<!-- Button -->
<br>
<div>
 <a class="btn btn-large btn-info" href="<%=request.getContextPath()%>/jsp/welcome.jsp">Search By Type of Meal</a>
</div>
</fieldset>
<br>
<%--<img src="../image/BirthdayCakeColorfulWallpaper.jpg" />--%>
<img src="<%=request.getContextPath()%>/images/food_dessert_sweet_delicious_cake_big_orange_ribbon_flower_rose_yellow_petals_74226_3840x2400.jpg" width= 500px height= 400px/>
 
</form>
</center>
  
  <a href="Logout" >Logout</a> 
</div>
</body>
</html>