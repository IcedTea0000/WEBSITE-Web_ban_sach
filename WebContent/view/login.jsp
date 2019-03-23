<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Sublime project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/checkout.css">
<link rel="stylesheet" type="text/css" href="styles/checkout_responsive.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<div class="checkout">
		<div class="container">
			<div class="row">

				<!-- Login -->
				<div class="col-lg-6">
					<div class="billing checkout_section">
						<div class="section_title">Login</div>
						<div class="section_subtitle">Enter your login info</div>
						<div class="checkout_form_container">
							<form action="" method="post" class="checkout_form">
								<div class="row">
									<div class="col-xl-6">
										<!-- Username -->
										<label for="login_username">USERNAME*</label> <input
											type="text" class="checkout_input" required="required"
											name="username" value="${param.username}"
											autofocus="autofocus" />
									</div>
									<div class="col-xl-6 last_name_col">
										<!-- Password -->
										<label for="login_password">PASSWORD*</label> <input
											type="password" name="password" class="checkout_input"
											required="required">
									</div>
									<div>${errorMessage}</div>
									<br />
									<div class="button order_button">
									<a>LOGIN</a>
									<button type="submit" />
									</div>
								</div>
							</form>
							<div class="section_subtitle" align="center">
								Don't have an account yet? <a href="register">Register</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/checkout.js"></script>
</body>
</html>