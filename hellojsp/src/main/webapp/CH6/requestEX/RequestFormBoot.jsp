<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">

</script>
<title>Insert title here</title>
</head>
<body>
<div class="container" style="max-width:600px; 
	border:1px solid #eee; 
	border-radius:5px; 
	margin-top:50px;
	box-shadow: 0 10px 20px rgba(0,0,0,0.3);">
		<p class="text-start-fs-1 fw-bold">Registration</p>
		<form action="requestProcBoot.jsp" method="post">
		


  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label fs-3">Username</label>
    <input type="text" class="form-control"
    		id="exampleInputEmail1" aria-describedby="emailHelp"
    		name="username">
   </div>
   
     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label fs-3">E-mail</label>
    <input type="email" class="form-control"
    		id="exampleInputEmail1" aria-describedby="emailHelp"
    		name="email">
   </div>
   
     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label fs-3">Telephone</label> 
    <input type="tel" class="form-control"
    		id="exampleInputEmail1" aria-describedby="emailHelp"
    		name="tel">
   </div>
   
   
   
      <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label fs-3">Hobby</label> 
   <select class="form-select" aria-label="Default select example">
  <option selected>Swimming</option>
  <option value="1">walking</option>
  <option value="2">Breathing</option>
</select>
</div>

			<!--ctrl + shift + f : 정렬-->
			<!-- form -> check&radios -->
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label fs-3">jobs</label>
				<!-- 체크박스 -->
				<div class="form-check">
					<input class="form-check-input"
							type="checkbox"
							value="Software Engineer"
							id="flexCheckDefault"
							name="jobs">
						<label class="form-check-label" for="flexCheckDefault"> 
						Software Engineer
						</label>
				</div>
				
				<div class="form-check">
					<input class="form-check-input"
							type="checkbox"
							value="UI/UX Engineer"
							id="flexCheckDefault"
							name="jobs">
						<label class="form-check-label" for="flexCheckDefault"> 
						UI/UX Engineer
						</label>
				</div>

								<div class="form-check">
					<input class="form-check-input"
							type="checkbox"
							value="AI Engineer"
							id="flexCheckDefault"
							name="jobs">
						<label class="form-check-label" for="flexCheckDefault"> 
						AI Engineer
						</label>
				</div>
						
				<button type="submit" class="btn btn-primary">확인</button>	
				<button type="submit" class="btn btn-primary">취소</button>
		</form>

</div>
</body>
</html>