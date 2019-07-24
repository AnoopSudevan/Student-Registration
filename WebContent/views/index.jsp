<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
@import url(http://fonts.googleapis.com/css?family=Raleway);
body{
    
    background-color:#ff666f;

}

a{
    
    color:#fff !important;
    
}
.nav-item {
    font-family: Century Gothic;
    margin: 0 auto;
    padding: 5em 3em;
    text-align: center;
}
.nav-item a {
    color: #FFF;
    text-decoration: none;
    font: 20px Century Gothic;
    margin: 0px 10px;
    padding: 10px 10px;
    position: relative;
    z-index: 0;
}


/* Top & Bottom Borders Out */
.topBotomBordersOut a:before, .topBotomBordersOut a:after {
    position: absolute;
    left: 0px;
    width: 100%;
    height: 2px;
    background: #FFF;
    content:"";
    opacity: 0;
    -webkit-transition: all 0.3s;
    transition: all 0.3s;
}
.topBotomBordersOut a:before {
    top: 0px;
    transform: translateY(10px);
}
.topBotomBordersOut a:after {
    bottom: 0px;
    transform: translateY(-10px);
}
.topBotomBordersOut a:hover:before, .topBotomBordersOut a:hover:after {
    opacity: 1;
    transform: translateY(0px);
}

</style>
              <nav class="menum navbar navbar-light navbar-expand-md justify-content-center fixed-top">
                <div class="container">

                <div class="navbar-collapse collapse justify-content-between align-items-center w-100" id="collapsingNavbar2">
                  <ul class="topBotomBordersOut navbar-nav mx-auto text-center">
                    <li class="nav-item active">
                      <a class="nav-link" href="Register">Register</a>
                    </li>
                    <li class="nav-item"> <a class="nav-link" href="dispdetails">Viewstudent</a> 
                    <li class="nav-item"> <a class="nav-link" href="updatedetails">Updatestudent</a> 
                    <li class="nav-item"> <a class="nav-link" href="deletedetails">Deletestudent</a> 
                    </li>
                  </ul>
                </div>
                </div>   
              </nav>
<style>
	
.main{
 	padding: 40px 0;
}
.main input,
.main input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}
.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 400px;
    padding: 10px 40px;
	background:#009edf;
	    color: #FFF;
    text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

}
span.input-group-addon i {
    color: #009edf;
    font-size: 17px;
}

</style>
<c:if test="${status}">
		<strong>${message }</strong>
		</c:if>
	

	<div class="container">
			<div class="main">
				<div class="main-center">
				<h5>Student Registration</h5>
					<form class="" method="post" action="Register">
						
						<div class="form-group">
							<label for="name">Student Name</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
				<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name" value="${newstudent.sname }"/>
							</div>
						</div>

						<div class="form-group">
							<label for="email">Student Email</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email" placeholder="Enter your Email" value="${newstudent.semail }"/>
							</div>
						</div>

						<div class="form-group">
							<label for="username">Student Username</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username" placeholder="Enter your Username" value="${newstudent.susername }"/>
								</div>
						</div>

						<div class="form-group">
							<label for="password">Password</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="user-password" id="user-password" placeholder="Enter your Password"/>
								</div>
						</div>

						<div class="form-group">
							<label for="confirm">Confirm Password</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm" placeholder="Confirm your Password"/>
								</div>
						</div>

				<button type="submit">SUBMIT</button>
						
					</form>
				</div><!--main-center"-->
			</div><!--main-->
		</div><!--container-->