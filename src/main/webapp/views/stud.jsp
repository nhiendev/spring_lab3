<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Insert title here</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
			<div class="container col-7 mt-4">
	<h2>${message}	</h2>

				
			<form:form  action="${pageContext.request.contextPath}/student/save" modelAttribute="sv" method="post">
				<form:errors path="*" element="li" delimiter=";"/>
			  <div class="row mb-3">
			    <label for="inputEmail3" class="col-sm-2 col-form-label">Name:</label>
			    <div class="col-sm-10">
			      <form:input path="name" class="form-control" id="inputEmail3"/>
			       <form:errors path="name" element="span" cssClass="text-danger"/>			      
			    </div>
			  </div>
				
			
			    <div class="row mb-3">
			    <label for="inputEmail3" class="col-sm-2 col-form-label">Email:</label>
			    <div class="col-sm-10">
			      <form:input path="email" class="form-control" id="inputEmail3"/>
			       <form:errors path="email" element="span" cssClass="text-danger"/>
			    </div>
			  </div>
			  
			  
			   <div class="row mb-3">
			    <label for="inputEmail3" class="col-sm-2 col-form-label">Marks:</label>
			    <div class="col-sm-10">
			      <form:input path="marks" class="form-control" id="inputEmail3"/>
			       <form:errors path="marks" element="span" cssClass="text-danger" />
			    </div>
			  </div>
			  
			  <fieldset class="row mb-3">
			    <legend class="col-form-label col-sm-2 pt-0">Gender:</legend>			    
			    <div class="col-sm-10">
			    
			      <div class="form-check">
			        <form:radiobutton class="form-check-input" path="gender" value="true" />
			        <label class="form-check-label" for="gridRadios1">
			          Male
			        </label>
			      </div>
			      
			     <div class="form-check">
			        <form:radiobutton class="form-check-input" path="gender" value="flase" />
			        <label class="form-check-label" for="gridRadios1">
			           Female
			        </label>
			      </div>
			    </div>
			  </fieldset>
			  
			    <div class="row mb-4">
			    <label for="inputEmail3" class="col-sm-2 col-form-label">Faculty:</label>
			    <div class="col-sm-10">
			     <form:select cssClass="form-select" path="faculty" aria-label="Default select example">
					 
					  <form:option value="1">One</form:option>
					  <form:option value="2">Two</form:option>
					  <form:option value="3">Three</form:option>
				</form:select>
			    </div>
			  </div>
			 
			    <div class="row mb-3">
			    <label for="inputEmail3" class="col-sm-2 col-form-label">Hobbies:</label>
			    <div class="col-sm-10">
			    
			    
				    <div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
						  <label class="form-check-label" for="inlineCheckbox2">T</label>
					</div>
								
					<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
						  <label class="form-check-label" for="inlineCheckbox2">M</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
					  <label class="form-check-label" for="inlineCheckbox2">F</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
					  <label class="form-check-label" for="inlineCheckbox2">O</label>
					</div>
				
			    </div>
			  </div>
			
				
				<div class="mb-3 row">
				  <label for="formFile" class="form-label col-sm-2">Default file </label>
				  <div class="col-sm-10">
				  	<input class="form-control" type="file" id="formFile">
				  </div>
				</div>
			
			  <button type="submit" class="btn btn-danger mt-5">Save</button>
			  
			</form:form>
		</div>
</body>
</html>