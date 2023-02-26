<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@ include file="alljscss.jsp" %>
</head>
<body>
	<div class="container">
    	<%@  include file="navbar.jsp" %> 
    	<br>
    	<!-- add form -->
    	<h1>Please your Notes</h1><br>
       <form action="SaveNotesServlet" method="post">
		  <div class="form-group">
		    <label for="exampleFormControlInput1">Note Title</label>
		    <input required type="text" name="title" class="form-control" id="title" placeholder="">
		  </div>
		  
		  <div class="form-group">
		    <label for="exampleFormControlTextarea1">Note Decription</label>
		    <textarea required class="form-control" name="content" id="contain" rows="3"></textarea>
		  </div>
		  
		  <div class="container text-center">
		   <button type="submit" class="btn btn-primary">add</button>
				</div>  
		</form>
		</div>

</body>
</html>