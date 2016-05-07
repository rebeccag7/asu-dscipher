<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dscipher.css">
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
							<a class="navbar-brand" href="#"> <img class="logo"
								src="logo-color.png"></a> <a class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse"> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
							</a>
						</div>
						<div class="navbar-collapse collapse pull-right">
							<ul class="nav navbar-nav text-center">
								<li class="active"><a href="#"><i class="fa fa-home"></i><br>HOME</a></li>
								<li><a href="#"><i class="fa fa-question-circle"></i><br>ABOUT</a></li>
								<li><a href="#"><i class="fa fa-database"></i><br>FUNDING</a></li>
								<li><a href="#"><i class="fa fa-star-half-empty"></i><br>REVIEWS</a></li>
								<li><a href="#"><i class="fa fa-bar-chart-o"></i><br>HOT
										TOPICS</a></li>
								<li><a href="#"><i class="fa fa-graduation-cap"></i><br>EDUCATION</a></li>
								<li><a href="#"><i class="fa fa-mobile-phone"></i><br>CONTACT</a></li>
								<li><a href="#"><i class="fa fa-support"></i><br>HELP</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- MAIN CONTENT -->
		<div class="DCcontainer">
			<div class="row">
				<div class="col-md-12">
					<div class="">
						<div class="">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading dchome">
										<div class="col-xs-1">
											<span class="panel-arrow pull-left">#&nbsp;-&nbsp;123</span>
										</div>
										<h3 class="panel-title text-center">STUDY:</h3>
									</div>
									<div class="">
										<p></p>
										<div class="media">
											<div class="media-left">
												<a href="#"> <img class="media-object"
													src="//placehold.it/50X50" alt="...">
												</a>
											</div>
											<div class="media-body">
												<h4 class="media-heading">Top aligned media</h4>
												Nov 7,2004 <a>View Original Source&nbsp;<i
													class="fa fa-external-link"></i></a>
											</div>
											<p></p>
											<div class="col-md-12">
												<p><%=request.getParameter("abstract") %></p>
											</div>
										</div>
									</div>

									<div class="panel-heading dcpanelbottom">
										<h3 class="panel-title text-center">
											Continue Reading<span class="panel-arrow pull-right"><i
												class="fa fa-long-arrow-right"></i></span>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-2">
									<i class="glyphicon glyphicon-eye-open"></i>&nbsp;<a href="#">5,461
										Views</a>
								</div>
								<div class="col-md-2">
									<i class="glyphicon glyphicon-share-alt"></i>&nbsp;<a href="#">461
										Shares</a>
								</div>
								<div class="col-md-8">
									<div class="input-group">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button">
												<i class="glyphicon glyphicon-search"></i>
											</button>
										</span> <input type="text" class="form-control"
											placeholder="New Search Article...">
									</div>
									<!-- /input-group -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<br>
			</div>

			<div class="row bottom top">  
					<div class="col-md-3 col">
							<div class="">
								<div class="">
									<div class="col-md-12 dcratingmain">
										<div class="dcrating">
											<!--<img src="//placehold.it/50x50">-->
											<strong>D.sci-pher</strong>&nbsp;<strong>Rating</strong>
										</div>
										<p></p>
										<small class="dcgrey bold">Cause &amp; Effect</small>
										<ul class="list-inline">
											<li class="active"><i
												class="glyphicon activeicon glyphicon-ok-sign"></i>
												<p></p>
												<strong>Yes</strong></li>
											<li><i class="glyphicon glyphicon-minus-sign"></i>
												<p></p>
												<strong>No</strong></li>
										</ul>
										<!-- Internal Validity -->
										<small class="dcgrey bold">Internal Validity</small>
										<ul class="nav nav-pills" role="tablist">
											<li class="dcratingnumber bold"><a href="#">1</a></li>
											<li class="dcratingnumber bold"><a href="#">2</a></li>
											<li class="dcratingnumber bold"><a href="#">3</a></li>
											<li class="dcratingnumber bold"><a href="#">4</a></li>
											<li class="dcratingnumber bold active"><a href="#">5</a></li>
										</ul>
										<br>
										<!-- Statistical Validity -->
										<small class="dcgrey bold">Statistical Validity</small>
										<ul class="nav nav-pills" role="tablist">
											<li class="dcratingnumber bold active"><a href="#">1</a></li>
											<li class="dcratingnumber bold"><a href="#">2</a></li>
											<li class="dcratingnumber bold"><a href="#">3</a></li>
											<li class="dcratingnumber bold"><a href="#">4</a></li>
											<li class="dcratingnumber bold"><a href="#">5</a></li>
										</ul>
										<br>
										<div class="input-group">
											<div class="input-group-btn">
												<button type="button" class="btn btn-danger btn-xs dcbutton">
													<i>FULL REPORT</i>
												</button>
												<button type="button"
													class="btn btn-danger btn-xs dcbutton dcblue">
													<i class="fa fa-long-arrow-right"></i>
												</button>
											</div>
										</div>
										<div class="one"></div>
									</div>
								</div>
							</div>
						</div>
					<div class="col-md-6 col">
						<div class="">
							<div class="">
								<div class="col-md-12 dcexpertmain">
									<div class="dcrating">
										
										<strong>Expert</strong>&nbsp;<strong>Rating</strong> <a
											href="#">(124)</a>
									</div>
									<p></p>
									
									<small class="dcgrey bold">Internal Validity</small>
									<ul class="nav nav-pills" role="tablist">
										<li class="dcratingnumber bold"><a href="#">1</a></li>
										<li class="dcratingnumber bold"><a href="#">2</a></li>
										<li class="dcratingnumber bold"><a href="#">3</a></li>
										<li class="dcratingnumber bold"><a href="#">4</a></li>
										<li class="dcratingnumber bold active"><a href="#">5</a></li>
									</ul>
									<br>
									
									<small class="dcgrey bold">Statistical Validity</small>
									<ul class="nav nav-pills" role="tablist">
										<li class="dcratingnumber bold active"><a href="#">1</a></li>
										<li class="dcratingnumber bold"><a href="#">2</a></li>
										<li class="dcratingnumber bold"><a href="#">3</a></li>
										<li class="dcratingnumber bold"><a href="#">4</a></li>
										<li class="dcratingnumber bold"><a href="#">5</a></li>
									</ul>
									<br> <small class="dcgrey bold">Statistical
										Validity</small>
									<ul class="nav nav-pills" role="tablist">
										<li class="dcratingnumber bold active"><a href="#">1</a></li>
										<li class="dcratingnumber bold"><a href="#">2</a></li>
										<li class="dcratingnumber bold"><a href="#">3</a></li>
										<li class="dcratingnumber bold"><a href="#">4</a></li>
										<li class="dcratingnumber bold"><a href="#">5</a></li>
									</ul>
									<br>
									<div class="col-md-12 dcratingmeaning">
										<small class="bold">What ratings mean?</small>
									</div>
									<br>
									<div class="panel-group" id="accordion" role="tablist"
										aria-multiselectable="true">
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingOne">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseOne"
														aria-expanded="true" aria-controls="collapseOne"> <i
														class="fa fa-caret-right"></i>&nbsp;&nbsp;Internal validity
													</a>
												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse in"
												role="tabpanel" aria-labelledby="headingOne">
												<div class="panel-body">&nbsp;&nbsp;Internal validity
													Description</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingTwo">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseTwo"
														aria-expanded="false" aria-controls="collapseTwo"> <i
														class="fa fa-caret-right"></i>&nbsp;&nbsp;External validity
													</a>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse"
												role="tabpanel" aria-labelledby="headingTwo">
												<div class="panel-body">&nbsp;&nbsp;External validity
													Description</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingThree">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseThree"
														aria-expanded="false" aria-controls="collapseThree"> <i
														class="fa fa-caret-right"></i>&nbsp;&nbsp;Statistical
														validity
													</a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse"
												role="tabpanel" aria-labelledby="headingThree">
												<div class="panel-body">&nbsp;&nbsp;Stastical validity
													Description</div>
											</div>
										</div>
									</div>
								</div>
								<div class="two"></div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col">
						<div class="">
							<div class="">
								<div class="col-md-12 dcratingmain">
									<div class="dcrating">
										<!--<img src="//placehold.it/50x50">-->
										<strong>Public</strong>&nbsp;<strong>Ratings</strong>
									</div>
									<p></p>

									<!-- Internal Validity -->
									<small class="dcgrey bold">Internal Validity</small>
									<ul class="nav nav-pills" role="tablist">
										<li class="dcratingnumber bold"><a href="#">1</a></li>
										<li class="dcratingnumber bold"><a href="#">2</a></li>
										<li class="dcratingnumber bold"><a href="#">3</a></li>
										<li class="dcratingnumber bold"><a href="#">4</a></li>
										<li class="dcratingnumber bold active"><a href="#">5</a></li>
									</ul>
									<br>
									<!-- External Validity -->
									<small class="dcgrey bold">External Validity</small>
									<ul class="nav nav-pills" role="tablist">
										<li class="dcratingnumber bold active"><a href="#">1</a></li>
										<li class="dcratingnumber bold"><a href="#">2</a></li>
										<li class="dcratingnumber bold"><a href="#">3</a></li>
										<li class="dcratingnumber bold"><a href="#">4</a></li>
										<li class="dcratingnumber bold"><a href="#">5</a></li>
									</ul>
									<div class="three"></div>
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
