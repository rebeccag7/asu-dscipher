<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dscipher.css">
<% 

String data =  request.getParameter("optionsRadios");
System.out.println(data);
request.getSession().setAttribute("data", data);
String noOfHypotheses =  request.getParameter("noofhypothesis");
System.out.println(noOfHypotheses);
request.getSession().setAttribute("noOfHypotheses", noOfHypotheses);
String hypos[] = request.getParameterValues("hypo");
System.out.println(Arrays.toString(hypos));
request.getSession().setAttribute("hypos", hypos);
String noOfDV =  request.getParameter("noofdv");
System.out.println(noOfDV);
request.getSession().setAttribute("noOfDV", noOfDV);
String dvs[] = request.getParameterValues("dv");
System.out.println(Arrays.toString(dvs));
request.getSession().setAttribute("dvs", dvs);
String noOfIV =  request.getParameter("noofiv");
System.out.println(noOfIV);
request.getSession().setAttribute("noOfIV", noOfIV);
String ivs[] = request.getParameterValues("idv");
System.out.println(Arrays.toString(ivs));
request.getSession().setAttribute("ivs", ivs);
%>	
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
								src="${pageContext.request.contextPath}/images/logo-color.png"></a> <a class="navbar-toggle"
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
<div class="dcbottompadding"></div>
		<!-- MAIN CONTENT -->
	<div class="dcbottombcgd">
		<div class="container">
			<div class="row">
				<div class="container">
					<div class="row">
						<div class="row">
							<div class="col-md-4">

								<div class="panel panel-default">
									<div class="panel-heading panel-dc-grey">Completion
										Status</div>
									<div class="panel-body">
										<div class="progress-radial progress-75">
											<div class="overlay">75%</div>
										</div>
									</div>
								</div>
								<div class="btn-group" role="group" aria-label="...">
									<button type="button" class="col-md-4 btn btn-default">
										<i class="fa fa-pie-chart"></i>
										<p>Status
									</button>
									<button type="button" class="col-md-4 active btn btn-default">
										<i class="fa fa-question-circle"></i>
										<p>FAQ
									</button>
									<button type="button" class="col-md-4 active btn btn-default">
										<i class="fa fa-life-bouy"></i>
										<p>Help
									</button>
								</div>
							</div>
							<div class="col-md-8">

								<div class="panel panel-default">
									<div class="panel-heading panel-dc-orange">
										<strong>AUTHOR / REVIEWER SURVEY</strong>
									</div>
									<div class="panel-body">
										<!-- form data goes here -->
										<form role="form" type="hidden" action="${pageContext.request.contextPath}/content/form4.jsp" method="POST">
											<label for="scale">Scale of measured variable? </label>
												<div class="radio">
													<label> <input type="radio" name="optionsRadios"
														id="optionsRadios1" value="Nominal">
														Nominal
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="optionsRadios"
														id="optionsRadios2" value="Ordinal"> Ordinal
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="optionsRadios"
														id="optionsRadios3" value="Interval or ratio">
														Interval or ratio
													</label>
												</div>
											
											<label for="test">Statistical test
														performed?</label>
											<div class="radioinline">
												<label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions" id="inlineRadio1"
													value="Chi-square"> chi-square
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions" id="inlineRadio2" value="t-test">
													t-test
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions" id="inlineRadio3" value="ANOVA">
													ANOVA
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions" id="inlineRadio4"
													value="Correlation"> Correlation
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions" id="inlineRadio4"
													value="Mann-Whitney"> Mann-Whitney
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions" id="inlineRadio5"
													value="Kruskai-Wallis"> Kruskai-Wallis
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions" id="inlineRadio5"
													value="Friedman"> Friedman
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions" id="inlineRadio6"
													value="Wilcoxon"> Wilcoxon
												</label>
											</div>
											<br> <label for="noofgroups">Number of groups? </label> <input
												type="text" class="form-control" name="noofgroups" id="noofgroups"
												placeholder="Enter number">
												<br>
												 <label for="groupassignment">Group
												Assignment? </label>
											<div class="radioinline">
												<label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions1" id="inlineRadio1" value="Random">
													Random
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions1" id="inlineRadio2"
													value="Matching"> Matching
												</label> <label class="radio-inline"> <input type="radio"
													name="inlineRadioOptions1" id="inlineRadio3"
													value="Precision Control"> Precision Control
												</label>
											</div>
                                             <br>
											<label for="conditions">Exposure to conditions?</label>
												<div class="radio">
													<label> <input type="radio" name="optionsRadios1"
														id="optionsRadios1" value="Between Subjects">
														Between Subjects
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="optionsRadios1"
														id="optionsRadios2" value="Within Subjects">
														Within Subjects
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="optionsRadios1"
														id="optionsRadios3" value="Mixed">
														Mixed
													</label>
												</div>
											<label for="subjects">Number of subjects per
															group? </label>
												<div class="radio">
													<div class="radio">
														<label> <input type="radio" name="optionsRadios2"
															id="optionsRadios1" value=">=20">
															&gt;= 20
														</label>
													</div>
													<div class="radio">
														<label> <input type="radio" name="optionsRadios2"
															id="optionsRadios2" value="<20"> &lt; 20
														</label>
													</div>
												</div>
											<button type="submit" class="btn btn-primary" >Next » </button>
										</form>
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
