<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Bank</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>


 	<div class="form-container ">
 	
 	<h1 class="text-center my-2 bg-blue">Add Bank</h1>
 	
	<form:form method="POST" modelAttribute="bank"  class="form-horizontal" action="savebankdetails">
	

		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="bankName">Bank Name</label>
				<div class="col-md-7">
					<form:input type="text" path="bank_name" id="bankName" class="form-control input-sm"/>
				   <div class="has-error" style="color:Tomato;">
						<form:errors path="bank_name" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
<br>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="branchName">Branch Name</label>
				<div class="col-md-7">
					<form:input type="text" path="branch_name" id="branchName" class="form-control input-sm"/>
					 <div class="has-error" style="color:Tomato;">
						<form:errors path="branch_name" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
<br>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="ifscCode">IFSC Code</label>
				<div class="col-md-7">
					<form:input type="text" path="ifsc_code" id="ifscCode" class="form-control input-sm"  aria-describedby="ifsclHelp"/>
					  <small id="ifscHelp" class="form-text text-muted">First 4 alphabet then 7 numeric.</small>
					 <div class="has-error" style="color:Tomato;">
						<form:errors path="ifsc_code" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
		


<br>
		<div class="row">
			<div class="form-actions floatRight">
				<input type="submit" value="Register" class="btn btn-primary" style="margin-left: 400%;">
			</div>
		</div>
	</form:form>
	</div>


</body>
</html>