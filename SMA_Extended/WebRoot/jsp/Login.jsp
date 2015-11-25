<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login | SMA-Extended v1.2</title>
    <link rel="shortcut icon" href="<s:url value='assets/images/favicon.png'/>" />
	<!-- Global stylesheets -->
<!-- 	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css"> -->
	<link href="<s:url value='assets/css/icons/icomoon/styles.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/bootstrap.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/core.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/custom.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/components.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/colors.css'/>" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->
	
		<!-- Core JS files -->
	<script type="text/javascript" src="<s:url value='assets/js/plugins/loaders/pace.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/core/libraries/jquery.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/core/libraries/bootstrap.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/loaders/blockui.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/ui/nicescroll.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/ui/drilldown.js'/>"></script>
	<!-- /core JS files -->


	<!-- Theme JS files -->
	<script type="text/javascript" src="<s:url value='assets/js/plugins/forms/validation/validate.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/core/app.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/pages/form_validation.js'/>"></script>
	<!-- /theme JS files -->
</head>

<body>

	<!-- Main navbar -->
	<div class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><img src="<s:url value='assets/images/SMA-logo.png'/>" alt=""></a>

			<ul class="nav navbar-nav pull-right visible-xs-block">
				<li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
			</ul>
		</div>

		<div class="navbar-collapse collapse" id="navbar-mobile">
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="#">
						<i class="icon-display4"></i> <span class="visible-xs-inline-block position-right"> Go to website</span>
					</a>
				</li>

				<li>
					<a href="#">
						<i class="icon-user-tie"></i> <span class="visible-xs-inline-block position-right"> Contact admin</span>
					</a>
				</li>

				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-cog3"></i>
						<span class="visible-xs-inline-block position-right"> Options</span>
					</a>
				</li>
			</ul>
		</div>
	</div>
	<!-- /main navbar -->


	<!-- Page container -->
	<div class="page-container login-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Simple login form -->
				<form action="Login" class="form-validate-jquery" method="Post" >
				<div class="row">
				 <div class="col-sm-8">
				          <div class="carousel slide" id="carousel2">
                                <ol class="carousel-indicators">
                                    <li data-slide-to="0" data-target="#carousel2" data-interval="200"  class="active"></li>
                                    <li data-slide-to="1" data-target="#carousel2" data-interval="200"></li>
                                    <li data-slide-to="2" data-target="#carousel2" data-interval="200" class=""></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img alt="image"  class="img-responsive" src="assets/images/p_big1.jpg">
                                        <div class="carousel-caption">
<!--                                             <p>This is simple caption 1</p> -->
                                        </div>
                                    </div>
                                    <div class="item ">
                                        <img alt="image"  class="img-responsive" src="assets/images/p_big3.jpg">
                                        <div class="carousel-caption">
<!--                                             <p>This is simple caption 2</p> -->
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img alt="image"  class="img-responsive" src="assets/images/p_big2.jpeg">
                                        <div class="carousel-caption">
<!--                                             <p>This is simple caption 3</p> -->
                                        </div>
                                    </div>
                                </div>
                                <a data-slide="prev" href="#carousel2" class="left carousel-control">
                                    <span class="icon-prev"></span>
                                </a>
                                <a data-slide="next" href="#carousel2" class="right carousel-control">
                                    <span class="icon-next"></span>
                                </a>
                            </div>
				 </div>
				  <div class="col-sm-4">
					<div class="panel panel-body login-form">
						<div class="text-center">
							<div class="icon-object border-slate-300 text-slate-300"><i class="icon-reading"></i></div>
							<h5 class="content-group">Login to your account <small class="display-block">Enter your credentials below</small></h5>
						</div>

						<div class="form-group has-feedback has-feedback-left">
							<input type="text" class="form-control" placeholder="Username" name="strUsername" onkeyup="clr()">
							<div class="form-control-feedback">
								<i class="icon-user text-muted"></i>
							</div>
						</div>

						<div class="form-group has-feedback has-feedback-left">
							<input type="password" class="form-control" placeholder="Password" name="strPassword" onkeyup="clr()">
							<div class="form-control-feedback">
								<i class="icon-lock2 text-muted"></i>
							</div>
						</div>
						  <s:if test="hasActionErrors()">	
							<div id="1">		
								<font color="red"><s:actionerror/></font>
							</div>
						  </s:if>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">Sign in <i class="icon-circle-right2 position-right"></i></button>
						</div>

						<div class="text-center">
							<a href="#">Forgot password?</a>
						</div>
					</div>
				   </div>
				  </div>
				</form>
				<!-- /simple login form -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->


		<!-- Footer -->
		<div class="footer text-muted">
			&copy; 2015. <a href="#">SMA-Extended v1.2</a> by <a href="#" target="_blank">HummingSoft sdn bhd</a>
		</div>
		<!-- /footer -->

	</div>
	<!-- /page container -->
   	<script type="text/javascript">
		function clr(){	
			$("#1").hide();
	}
</script>
</body>
</html>
