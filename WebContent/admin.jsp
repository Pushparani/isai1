<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org   /TR/html4/loose.dtd">`
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Admin Account!!!</title>
</head>
<body>
<script>
function validate()
{
if((document.f1.uname.value=="admin") && (document.f1.pass.value=="pass"))
{
alert("welcome");
return true;
//response.sendRedirect("http://localhost:8080/Imayamweb/songs/radio/index.jsp");
}
else{
	alert("invalid");
	document.f1.uname.focus();
	return false;
}
	//response.sendRedirect("http://localhost:8080/Imayamweb/admin.jsp");
}
</script>

<center><h1>Welcome to Admin Account!!!</h1><br><br>
<form name="f1"  action="/isai/upload.jsp" onSubmit="return validate();" method="post">
UserName<input type="text" name="uname"/><br>
Password<input type="password" name=pass><br><br><br>
<input type="submit" value="submit" /><br></center>
</form>
</body>
</html>