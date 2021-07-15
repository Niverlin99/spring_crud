<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Bank</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<script>
$(document).ready(function(){
	 $(document).on('click','.welcomeCls',function(){
			
		 var url = "/bank/viewbankdetails";
	
		 window.location.href = url;
		 
	 });
});
</script>

<style>
.center {
  padding: 300px 0;
  border: 0px solid green;
  text-align: center;
}
</style>

<body class="bg-danger text-white ">

<div class="center">
<button type="button" class="welcomeCls btn btn-danger">WELCOME</button>
</div>  


</body>
</html>
