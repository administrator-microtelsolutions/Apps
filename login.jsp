<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="<c:url value='/static/css/tutorial.css'/>" type="text/css" /> 
  </head>
<body> 

	<script>
		jQuery(document).ready(function(){ 
			 jQuery(window).resize(function(){ 
				  jQuery('.className').css({
					   position:'absolute',
					   left: (jQuery(window).width() - jQuery('.className').outerWidth())/2,
					   top: (jQuery(window).height() - jQuery('.className').outerHeight())/2 -100
				  }); 
			 }); 
			 
		 // To initially run the function:
		 jQuery(window).resize();
		
		});
	 
	</script>
<fieldset class="main">
<div  >
	<br>
	<form name="f" action="<c:url value='j_spring_security_check'/>" method="POST">
		<table align="center" width="50%">
			<tr>
				<td colspan="2" style="text-align:center"><h2>Please Login</h2></td>
			</tr>
			
			<tr>
				<td width="30%" style="padding-left:50">Username</td>
				<td width="65%" style="padding-left:15"><input type='text' name='j_username' value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>'/></td>
			</tr> 
			<tr>
				<td style="padding-left:50">Password</td>
				<td style="padding-left:15"><input type='password' name='j_password'/></td>
			</tr>
			<tr style="height:50">
			  <td></td>
				<td colspan="2" align="center" style="padding-left:15">
					<input name="submit" type="submit" value="        Login        " />
					<input name="reset" type="reset" value="        Reset        " /> 
					
				</td>
				 
			</tr>
			<tr>
				<td colspan="2" align="center">
				<c:if test="${not empty param.login_error}">
			      <font color="red" size="2px">
			        Your login attempt was not successful, try again. 
			      </font>
			    </c:if>
				</td>
			</tr>
		</table>
	</form> 
</div>
</fieldset>
 


</body>
</html>
