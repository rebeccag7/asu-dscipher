<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dscipher.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


<script type="text/javascript">
	$(document).ready(
		function() {
            var counter = 2;
		    $("#addButton").click( function() {
					var newTextBoxDiv = $(document.createElement('div')).attr("id",'TextBoxDiv' + counter);
					newTextBoxDiv.after().html('<label>Hypothesis #' + counter + ' : </label>' + '<input type="text" class="form-control" name="hypo"' + counter + 
	                 '" id="textbox1"' + counter + '" value="" >'); 
	                 newTextBoxDiv.appendTo("#TextBoxesGroup");
	                 counter++;
                });
				$("#removeButton").click(function() {
							if (counter == 1) {
								//alert("No more textbox to remove");
								return false;
							}
							counter--;
							$("#TextBoxDiv" + counter).remove();
						});
					});
</script>					
<script> 
$(document).ready(
		function() {
            var counter = 2;
		    $("#addButton2").click( function() {
					var newTextBoxDiv = $(document.createElement('div')).attr("id",'TextBoxDiv2' + counter);
					newTextBoxDiv.after().html('<label>Concise Definition of DV #' + counter + ' : </label>' + '<input type="text" class="form-control" name="dv"' + counter + 
	                 '" id="textbox2"' + counter + '" value="" >'); 
	                 newTextBoxDiv.appendTo("#TextBoxesGroup2");
	                 counter++;
                });
				$("#removeButton2").click(function() {
							if (counter == 1) {
								//alert("No more textbox to remove");
								return false;
							}
							counter--;
							$("#TextBoxDiv2" + counter).remove();
						});
					});
</script>

<script type="text/javascript">
	$(document).ready(
		function() {
            var counter = 2;
		    $("#addButton3").click( function() {
					var newTextBoxDiv = $(document.createElement('div')).attr("id",'TextBoxDiv3' + counter);
					newTextBoxDiv.after().html('<label>Hypothesis #' + counter + ' : </label>' + '<input type="text" class="form-control" name="idv"' + counter + 
	                 '" id="textbox3"' + counter + '" value="" >'); 
	                 newTextBoxDiv.appendTo("#TextBoxesGroup3");
	                 counter++;
                });
				$("#removeButton3").click(function() {
							if (counter == 1) {
								//alert("No more textbox to remove");
								return false;
							}
							counter--;
							$("#TextBoxDiv3" + counter).remove();
						});
					});
</script>	
<% 
String noOfStudies =  request.getParameter("noofstudies");
System.out.println(noOfStudies);
request.getSession().setAttribute("noOfStudies", noOfStudies);
String[] fields = request.getParameterValues("field");
System.out.println(Arrays.toString(fields));
request.getSession().setAttribute("fields", fields);
String design =  request.getParameter("optionsRadios");
System.out.println(design);
request.getSession().setAttribute("design", design);
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
											<div class="progress-radial progress-25">
												<div class="overlay">25%</div>
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
											<form id="myForm" type="hidden" action="${pageContext.request.contextPath}/content/form3.jsp" method="POST">
												<input type="hidden" name="pageName" value="form2">
												<label for="data">Data?</label>
												<div class="radio">
													<label><input type="radio" name="optionsRadios"
														id="optionsRadios1" value="Qualitative" checked="">
														Qualitative </label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="optionsRadios"
														id="optionsRadios2" value="Quantitative">
														Quantitative
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="optionsRadios"
														id="optionsRadios3" value="Mixed"> Mixed
													</label>
												</div>

												<!--  <div class="form-group" id="study">
												<label for="noofstudies">Number of studies in this
													paper? </label> <input type="text" class="form-control"
													id="noofstudies" placeholder="Enter a number"
													onchange="myFunction(this.value);"
													oninput="this.onchange();">
											</div>-->

												<div class="form-group">
													<label for="noofhypothesis">Number of Hypotheses:</label> <input
														type="text" class="form-control" id="noofhypothesis" name="noofhypothesis">
												</div>
												<div class="form-group">
													<div id='TextBoxesGroup'>
														<div id="TextBoxDiv1">
															<label>Hypothesis #1 : </label><input type="text"
																name="hypo" class="form-control" id='textbox1'>
														</div>
													</div>
												</div>
												<div class="form-group">
													<input class="btn btn-primary" type='button' value='Add'
														id='addButton'> <input class="btn btn-primary"
														type='button' value='Remove' id='removeButton'>
												</div>
												<!-- <input class="btn btn-primary" type='button' value='Get TextBox Value'
												id='getButtonValue'> -->

												<div class="form-group">
													<label for="noofdv">Number of dependent variables?</label>
													<input type="text" class="form-control" name="noofdv" id="noofdv">
												</div>
												<div class="form-group">
													<div id='TextBoxesGroup2'>
														<div id="TextBoxDiv2">
															<label>Concise Definition of DV #1 : </label><input
																name="dv" type="text" class="form-control" id='textbox2'>
														</div>
													</div>
												</div>
												<div class="form-group">
													<input class="btn btn-primary" type='button' value='Add'
														id='addButton2'> <input class="btn btn-primary"
														type='button' value='Remove' id='removeButton2'>
												</div>


												<div class="form-group">
													<label for="noofiv">Number of Independent
														Variables?</label> <input type="text" class="form-control"
														name="noofiv" id="noofiv">
												</div>
												<div class="form-group">
													<div id='TextBoxesGroup3'>
														<div id="TextBoxDiv3">
															<label>Concise Definition of IV #1 : </label><input
																name="idv" type="text" class="form-control" id='textbox3'>
														</div>
													</div>
												</div>
												<div class="form-group">
													<input class="btn btn-primary" type='button' value='Add'
														id='addButton3'> <input class="btn btn-primary"
														type='button' value='Remove' id='removeButton3'>
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
