<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit note</title>


 <%@ include file="alljscss.jsp" %>

</head>
<body>
    	<div class="container">
    	<%@  include file="navbar.jsp" %>
		<br>
		<%
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=	FactoryProvider.getFactory().openSession();		 
	    Note note=(Note)s.get(Note.class, noteId);
		%>
		
	    <form action="UpdateServlet" method="post">
	    	<input value="<%=note.getId() %>"name="nodeId" type="hidden">
		  <div class="form-group">
		    <label for="exampleFormControlInput1">Note Title</label>
		    <input required type="text" name="title" class="form-control" id="title" value="<%=note.getTitle() %>" placeholder="">
		  </div>
		  
		  <div class="form-group">
		    <label for="exampleFormControlTextarea1">Note Decription</label>
		    <textarea required class="form-control" name="content" id="contain" rows="3"><%=note.getContent() %></textarea>
		  </div>
		  
		  <div class="container text-center">
		   <button type="submit" class="btn btn-success">Save</button>
		</div>  
		</form> 
	    
</div>

</body>
</html>