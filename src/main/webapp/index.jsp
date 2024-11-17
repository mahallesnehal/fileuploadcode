<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<body>
<form action="upload" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Enter Your Name</td>
			<td><input type="text" name="txtUname"/></td>
		</tr>
		<tr>
			<td>Select Your Profile Pic : </td>
			<td><input type="file" name="profilepic" accept="image/*"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="UPLOAD"/></td>
		</tr>
	</table>
</form>
</body>
</html>