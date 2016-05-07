<%@page import="model.AuthorSurvey"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.ArrayList"%>
	<%@page import="model.Article"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/dscipher.css">
</head>

<body>
	<div class="">
		<!-- HEADER -->
		<div class="col-sm-12 SocialMediaHeader">
			<div class="row">
				<div class="col-sm-offset-5 col-sm-2 White">
					<p class="navbar-text">
						<i class="fa fa-user"></i>&nbsp;Sign In
					</p>
				</div>
				<div class="col-sm-2 navbar-text ">
					<div class="input-group">
						<input class="form-control input-sm" placeholder="Search for..."
							type="text"> <span class="input-group-btn">
							<button class="btn btn-info btn-sm" type="button">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</span>
					</div>
				</div>
				<div id="NYCHAsocialmedia" class="navbar-text col-sm-2 White">
					<ul class="list-inline">
						<li><a href="#"><i class="fa White fa-facebook-square"></i></a></li>
						<li><a href="#"><i class="fa White fa-twitter-square"></i></a></li>
						<li><a href="#"><i class="fa White fa-google-plus-square"></i></a></li>
						<li><a href="#"><i class="fa White fa-youtube-square"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- NAVIGATION BAR -->
		<div class="">
			<div class="row DCNavbar">
				<div class="menu">
					<div class="navbar-default">
						<div class="navbar-header">
							<a class="navbar-brand" href="#"><img class="logo"
								src="images/logo-color.png"></a> <a class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse"> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
							</a>
						</div>
						<div class="navbar-collapse collapse pull-right">
							<ul class="nav navbar-nav text-center">
								<li class="active"><a href="#"><i class="fa fa-home"></i><br>
										<small>HOME</small></a></li>
								<li><a href="#"><i class="fa fa-question-circle"></i><br>
										<small>ABOUT</small></a></li>
								<li><a href="#"><i class="fa fa-database"></i><br>
										<small>FUNDING</small></a></li>
								<li><a href="#"><i class="fa fa-star-half-empty"></i><br>
										<small>REVIEWS</small></a></li>
								<li><a href="#"><i class="fa fa-bar-chart-o"></i><br>
										<small>HOT TOPICS</small></a></li>
								<li><a href="#"><i class="fa fa-graduation-cap"></i><br>
										<small>EDUCATION</small></a></li>
								<li><a href="#"><i class="fa fa-mobile-phone"></i><br>
										<small>CONTACT</small></a></li>
								<li><a href="#"><i class="fa fa-support"></i><br>
										<small>HELP</small></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="dcbottompadding"></div>
		<!-- MAIN CONTENT -->
		<div class="dcbottombcgd">
		<div class="container">
			<div class="row">
				<div class="container">
					<div class="row">
						<div class="row">
							<div class="col-md-2">

								<!--<div class="panel panel-default">
									<div class="panel-heading panel-dc-grey">Completion
										Status</div>
									<div class="panel-body text-center">
										<div class="progress-radial progress-25">
											<div class="overlay">100%</div>
										</div>
									</div>
								</div> -->
							</div>
							<div class="col-md-10">

								<div class="panel panel-default">
									<div class="panel-heading panel-dc-orange"></div>
									<div class="panel-body">
										<div class="">
												<div>
													<h1>Author Review</h1>
													<p></p>
												</div>
												
												<%  
												AuthorSurvey as = (AuthorSurvey) request.getAttribute("review");
												if(as != null) {
												%>
												<b>Title: </b> <%= (String) request.getAttribute("title") %><br>
												<b>Design: </b> <%= as.getDesign() %><br>
												<b>Number of studies: </b> <%= as.getNoOfStudies() %><br>
												<b>Type of Data: </b> <%= as.getData() %><br>
												<b>Number of dependent variables: </b> <%= as.getNoOfDV() %><br>
												<b>Number of independent variables: </b> <%= as.getNoOfIV() %><br>
												<b>Statistical test: </b> <%= as.getTest() %><br>
												<b>Scale of Measured Variable:</b> <%= as.getScale() %><br>
												<b>Exposure to conditions: </b> <%= as.getConditions() %>
												<% } else { %>
												The review does not exist.
												<% } %>
											<div></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
		<!-- FOOTER -->

		<div class="">
			<div class="row">
				<div class="footer2">
					<div class="container">
						<div class="row">
							<div class="col-md-3">
								<address>
									<strong><i class="fa fa-lightbulb-o"></i>&nbsp;D-SCi-Pher</strong><br>
									328 NE Davis #1<br> Phoenix, AZ 85001<br> <a
										href="mailto:#">help@decipher.com</a><br> <abbr
										title="Phone">P:</abbr> (503) 435-7890
								</address>
							</div>
							<div class="col-md-3">
								<address>
									<strong><i class="fa fa-flask"></i>&nbsp;TYPES OF
										RESEARCH</strong><br> 328 NE Davis #1<br> Phoenix, AZ 85001<br>
									<a href="mailto:#">help@decipher.com</a><br> <abbr
										title="Phone">P:</abbr> (503) 435-7890
								</address>
							</div>
							<div class="col-md-3">
								<address>
									<strong><i class="fa fa-user-md"></i>&nbsp;STAFF</strong><br>
									328 NE Davis #1<br> Phoenix, AZ 85001<br> <a
										href="mailto:#">help@decipher.com</a><br> <abbr
										title="Phone">P:</abbr> (503) 435-7890
								</address>
							</div>

							<div class="col-md-3"></div>
						</div>
					</div>
				</div>
				<div id="DCfooter"
					class="DCfooter navbar navbar-default navbar-fixed-bottom">
					<div class="col-md-8">
						<p class="navbar-text pull-left">© 2015 - D-SCi-Pher all
							rights reserved.</p>
					</div>
				</div>
				<!-- comment -->
			</div>
		</div>
	</div>
</body>

</html>
