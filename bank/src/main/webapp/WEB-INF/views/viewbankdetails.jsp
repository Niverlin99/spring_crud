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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
.bg-blue{
background-color:#040778;
color:white
}
</style>
</head>
<script type="text/javascript">

$(document).ready(function(){
	 var bank_id;
	 $(document).on('click','.checkBoxCls',function(){
		 var bank_id = $(this).attr('id');
		 $("#new_bank_id").val(bank_id);
		 
		 $(document).on('click','.deleteBtnCls',function(){
			 var url = "/bank/deletebank/" + bank_id;
			 window.location.href = url;
			 
		 });
		 
		 $(document).on('click','.editBtnCls',function(){
			 var url = "/bank/editbank/" + bank_id;
			 window.location.href = url;
			 
		 });

	 });
	 
	 $(document).on('click','.addBtnCls',function(){
		
		 var url = "/bank/addbank";
	
		 window.location.href = url;
		 
	 });
	

});
</script>

<script>
$(document).ready(function(){
    $('.checkBoxCls').click(function() {
        $('.checkBoxCls').not(this).prop('checked', false);
    });
});
</script>
<body>

<div>
<h1 class="text-center my-2 bg-blue">Bank Details</h1>
<form:form  class="form-horizontal" >

    <table class="table table-hover">
    <thead>
      <tr>
 <th class="text-center">Select</th>
 <th>Bank Name</th>
 <th>Branch Name</th>
 <th>IFSC Code</th>
</tr>  
    </thead>
    <tbody>
    <c:forEach var="bank" items="${list}"> 
   <tr>  
   
   <td align="center"><input type="checkbox" id ="${bank.id}" class="checkBoxCls"></td> 
   <td>${bank.bank_name}</td> 
   <td>${bank.branch_name}</td>  
   <td>${bank.ifsc_code}</td>  
   </tr>  
   </c:forEach> 
    </tbody>
  </table>
   

   </form:form>


<div class="text-center">


<button type="button" class="addBtnCls btn btn-success">ADD</button>

<button type="button" class="editBtnCls btn btn-primary">EDIT</button>

<button type="button" class="deleteBtnCls btn btn-danger">DELETE</button>
 
</div>
</div>
</body>
</html>