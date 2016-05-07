<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dscipher.css">

</head>

<body>
	<div class="">
    <!-- HEADER -->
    <div class="col-sm-12 SocialMediaHeader">
        <div class="row">
            <div class="col-sm-offset-5 col-sm-2 White">
                <p class="navbar-text"><i class="fa fa-user"></i>&nbsp;Sign In</p>
            </div>
            <div class="col-sm-2 navbar-text ">
                <div class="input-group">
                    <input class="form-control input-sm" placeholder="Search for..." type="text">
                    <span class="input-group-btn">
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
                    <div class="navbar-header"><a class="navbar-brand" href="#"><img class="logo"
								src="${pageContext.request.contextPath}/images/logo-color.png"></a>
                        <a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                    </div>
                    <div class="navbar-collapse collapse pull-right">
                        <ul class="nav navbar-nav text-center">
                            <li class="active"><a href="#"><i class="fa fa-home"></i><br>HOME</a></li>
                            <li><a href="#"><i class="fa fa-question-circle"></i><br>ABOUT</a></li>
                            <li><a href="#"><i class="fa fa-database"></i><br>FUNDING</a></li>
                            <li><a href="#"><i class="fa fa-star-half-empty"></i><br>REVIEWS</a></li>
                            <li><a href="#"><i class="fa fa-bar-chart-o"></i><br>HOT TOPICS</a></li>
                            <li><a href="#"><i class="fa fa-graduation-cap"></i><br>EDUCATION</a></li>
                            <li><a href="#"><i class="fa fa-mobile-phone"></i><br>CONTACT</a></li>
                            <li><a href="#"><i class="fa fa-support"></i><br>HELP</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

<div class="">
    <div class="row">
        <div class="row">
            <div class="col-md-3">
                <!-- find an article -->
                <div class="dcfind">
                    <div>
                        <!-- Split button -->
                        <div class="btn-group">
                        <form method="get" action="${pageContext.request.contextPath}/Articles">
                            <button type="submit" name="act" value="find" class="btn btn-danger btn-xs dcbutton"><i class="fa dcfa fa-book"></i>&nbsp;&nbsp;&nbsp;FIND AN ARTICLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                            <button type="button" class="btn dropdown-toggle btn-xs dcbuttonext" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="fa fa-long-arrow-right"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            </form>
                        </div>
                        <br>
                        <br>
                        <div class="btn-group">
                         <form method="get" action="${pageContext.request.contextPath}/Articles">
                            <button name="act" value="review" type="submit" class="btn btn-danger btn-xs dcbutton"><i class="fa dcfa fa-pencil"></i>&nbsp;&nbsp;&nbsp;REVIEW AN ARTICLE</button>
                            <button type="button" value="review" class="btn dropdown-toggle btn-xs dcbuttonext" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="fa fa-long-arrow-right"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            </form>
                        </div>
                        <br>
                        <br>
                        <div class="">
                            <button class="btn btn-default dcfindbutton pull-left"><strong>Meet the Team</strong></button>
                            <br>
                            <br>
                            <div class="">
                                <ul class="dclist">
                                    <li>FAQ</li>
                                    <li>What We Offer</li>
                                    <li>Guides and Tips</li>
                                </ul>
                            </div>
                        </div>

                        <br>
                        <br>
                    </div>
                </div>
                <!-- news topics -->
                <!-- bootstrap media-->
                <div class="dcnews">
                    <p class="text-center">Latest News/Hot Topics</p>
                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="//placehold.it/50" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading">EVIDENCE FOR SUGAR ADDICTION:</h6><small>Behavioural and Neurochemical effects of intermittent, Excessive Sugar intake.</small>
                        </div>
                    </div>
                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="//placehold.it/50" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading">EVIDENCE FOR SUGAR ADDICTION:</h6><small>Behavioural and Neurochemical effects of intermittent, Excessive Sugar intake.</small>
                        </div>
                    </div>
                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="//placehold.it/50" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading">EVIDENCE FOR SUGAR ADDICTION:</h6><small>Behavioural and Neurochemical effects of intermittent, Excessive Sugar intake.</small>
                        </div>
                    </div>
                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="//placehold.it/50" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading">EVIDENCE FOR SUGAR ADDICTION:</h6><small>Behavioural and Neurochemical effects of intermittent, Excessive Sugar intake.</small>
                        </div>
                    </div>
                </div>
                <!-- /bootstrap media-->
            </div>
            <div class="col-md-9">
                <div class="row" style="background-image: url(${pageContext.request.contextPath}/images/background.jpg);">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading dchome">
                                <h3 class="panel-title">VIEW OUR RATING TEMPLATE</h3>
                            </div>
                            <div class="text-center">
                                <h1><i class="fa fa-thumbs-o-up"></i></h1>
                            </div>
                            <div class="panel-heading dcpanelbottom">
                                <h3 class="panel-title">See how fast and easy it is to use!<span class="panel-arrow pull-right"><i class="fa fa-long-arrow-right"></i></span></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading dchome">
                                <h3 class="panel-title">FREQUENTLY ASKED QUESTIONS</h3>
                            </div>
                            <div class="text-center">
                                <h1><i class="fa fa-question-circle"></i></h1>
                            </div>
                            <div class="panel-heading dcpanelbottom">
                                <h3 class="panel-title">All your questions answered!<span class="panel-arrow pull-right"><i class="fa fa-long-arrow-right"></i></span></h3>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- bottom section -->
						<div class="dcbtmpadding"></div>
						<div>
							<div class="row">
								<div class="col-md-4">
									<div class="card">
										<img class="card-img-top" src="${pageContext.request.contextPath}/images/pic1.jpg" alt="">
										<div class="card-block">
											<h4 class="card-title">Education</h4>
											<hr>
											<p class="card-text">
												Learn what does and does not<br> matter in scientific
												research.
											</p>

											<div class="btn-group">
												<button type="button" class="btn btn-danger btn-xs dcbutton">
													<i class="fa dcfa fa-book"></i>&nbsp;&nbsp;&nbsp;READ
													MORE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</button>
												<button type="button"
													class="btn dropdown-toggle btn-xs dcbuttonext"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<span class="fa fa-long-arrow-right"></span> <span
														class="sr-only">Toggle Dropdown</span>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="card">
										<img class="card-img-top" src="${pageContext.request.contextPath}/images/pic2.jpg" alt="">
										<div class="card-block">
											<h4 class="card-title">Compare d-SCI-pher to:</h4>
											<hr>
											<p class="card-text">
												Expert ratings. <br>Public ratings.
											</p>

											<div class="btn-group">
												<button type="button" class="btn btn-danger btn-xs dcbutton">
													<i class="fa dcfa fa-book"></i>&nbsp;&nbsp;&nbsp;READ
													MORE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</button>
												<button type="button"
													class="btn dropdown-toggle btn-xs dcbuttonext"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<span class="fa fa-long-arrow-right"></span> <span
														class="sr-only">Toggle Dropdown</span>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="card">
										<img class="card-img-top" src="${pageContext.request.contextPath}/images/pic3.jpg" alt="">
										<div class="card-block">
											<h4 class="card-title">d-SCI-pher ratings for:</h4>
											<hr>
											<p class="card-text">
												Authors. <br>Journals.
											</p>
											<div class="btn-group">
												<button type="button" class="btn btn-danger btn-xs dcbutton">
													<i class="fa dcfa fa-book"></i>&nbsp;&nbsp;&nbsp;READ
													MORE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</button>
												<button type="button"
													class="btn dropdown-toggle btn-xs dcbuttonext"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<span class="fa fa-long-arrow-right"></span> <span
														class="sr-only">Toggle Dropdown</span>
												</button>
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
                      328 NE Davis #1<br>
                      Phoenix, AZ 85001<br>
                      <a href="mailto:#">help@decipher.com</a><br>
                      <abbr title="Phone">P:</abbr> (503) 435-7890
                </address>
                        </div>
                        <div class="col-md-3">
                            <address>
                      <strong><i class="fa fa-flask"></i>&nbsp;TYPES OF RESEARCH</strong><br>
                        328 NE Davis #1<br>
                      Phoenix, AZ 85001<br>
                      <a href="mailto:#">help@decipher.com</a><br>
                      <abbr title="Phone">P:</abbr> (503) 435-7890
                </address>
                        </div>
                        <div class="col-md-3">
                            <address>
                      <strong><i class="fa fa-user-md"></i>&nbsp;STAFF</strong><br>
                        328 NE Davis #1<br>
                      Phoenix, AZ 85001<br>
                      <a href="mailto:#">help@decipher.com</a><br>
                      <abbr title="Phone">P:</abbr> (503) 435-7890
                </address>
                        </div>

                        <div class="col-md-3"></div>
                    </div>
                </div>
            </div>
            <div id="DCfooter" class="DCfooter navbar navbar-default navbar-fixed-bottom">
                <div class="col-md-8">
                    <p class="navbar-text pull-left">© 2015 - D-SCi-Pher all rights reserved.</p>
                </div>
            </div>
            <!-- comment -->
        </div>
    </div>
</div>


</body>

</html>
