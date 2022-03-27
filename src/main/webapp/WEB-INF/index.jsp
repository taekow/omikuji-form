<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Omikuji Form</title>
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="js/app.js"></script>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container pt-3">
		<h1>Send An Omikuji</h1>
			<form action="/process" method=post>
				<label for="formControlInput" class="form-label">
				Pick any number form 5 to 25
				</label>
				<select class="form-select" aria-label="Default select" name="number">
				  <option value="5">5</option>
				  <option value="6">6</option>
				  <option value="7">7</option>
				  <option value="8">8</option>
				  <option value="9">9</option>
				  <option value="10">10</option>
				  <option value="11">11</option>
				  <option value="12">12</option>
				  <option value="13">13</option>
				  <option value="14">14</option>
				  <option value="15">15</option>
				  <option value="16">16</option>
				  <option value="17">17</option>
				  <option value="18">18</option>
				  <option value="19">19</option>
				  <option value="20">20</option>
				  <option value="21">21</option>
				  <option value="22">22</option>
				  <option value="23">23</option>
				  <option value="24">24</option>
				  <option value="25">25</option>
				</select>
				
				<label for="formControlInput" class="form-label">
				Enter the name of any city
				</label>
				<input type="text" class="form-control" id="formControlInput" name="city">
				
				<label for="formControlInput" class="form-label">
				Enter the name of any real person
				</label>
				<input type="text" class="form-control" id="formControlInput" name="person">
				
				<label for="formControlInput" class="form-label">
				Enter professional endevor or hobby
				</label>
				<input type="text" class="form-control" id="formControlInput" name="hobby">
				
				<label for="formControlInput" class="form-label">
				Enter any type of living thing
				</label>
				<input type="text" class="form-control" id="formControlInput" name='livingThing'>
				
				<label for="formControlInput" class="form-label">
				Say something nice to someone
				</label>
				<input type="text" class="form-control" id="formControlInput" name="saySomething">
				
				<p class="send">Send any show a friend</p>
				
				<button type="submit" class="btn btn-primary">Send</button>
			</form>			
	</div>
</body>
</html>