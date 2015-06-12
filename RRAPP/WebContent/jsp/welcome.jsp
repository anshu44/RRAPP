<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
	U R logged in..
</body>
</html>--%>
<html>
    <head>
        <title>Food Application - Eating In </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div></div>
   <s:property value="userName"/>
    <script>
            (function () {
            	window.__gcse = {
                        callback: myCallback
                    };
            	
            	function myCallback()
            	{

            		
            	}
            	
            	
               
            	
                var cx = '014670536576760616067:jes2q4__s08';
                var gcse = document.createElement('script');
                gcse.type = 'text/javascript';
                gcse.async = true;
                gcse.src = (document.location.protocol === 'https:' ? 'https:' : 'http:') +
                        '//www.google.com/cse/cse.js?cx=' + cx;
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(gcse, s);
            })();
            
            
       </script>
       
    <gcse:search></gcse:search>
    <%--  <form action="insertfav" id="form">
    </form>--%>
   
</body>

</html>