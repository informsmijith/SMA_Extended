<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Error | SMA-Extended v1.2</title>

	<!-- Global stylesheets -->
	<link href="<s:url value='assets/css/icons/icomoon/styles.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/bootstrap.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/core.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/custom.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/components.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/spinner/css/spinners.css'/>" rel="stylesheet" type="text/css">
	<link href="<s:url value='assets/css/colors.css'/>" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="<s:url value='assets/js/plugins/loaders/pace.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/core/libraries/jquery.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/core/libraries/bootstrap.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/loaders/blockui.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/ui/nicescroll.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/ui/drilldown.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/custom/custom.js'/>"></script>
	<!-- /core JS files -->


	<!-- Theme JS files -->
	<script type="text/javascript" src="<s:url value='assets/js/core/app.js'/>"></script>
	<!-- /theme JS files -->

</head>

<body>
    <!-- Loading Container -->
    <div class="loading-container">
        <div class="spinner-loader"></div>
    </div>
    <!--  /Loading Container -->
	<!-- Main navbar -->
	<%@include file="/jsp/global/header.jsp"%>
	<!-- /main navbar -->
	
	<!-- Page container -->
	<div class="page-container login-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Error wrapper -->
				<div class="container-fluid text-center">
					<h1 class="error-title">500</h1>
					<h6 class="text-semibold content-group">Oops, an error has occurred. Internal server error!</h6>

					<div class="row">
						<div class="col-lg-4 col-lg-offset-4 col-sm-6 col-sm-offset-3">
							<form action="#" class="main-search">
								<div class="input-group content-group">
									<input type="text" class="form-control input-lg" placeholder="Search">

									<div class="input-group-btn">
										<button type="submit" class="btn bg-slate-600 btn-icon btn-lg"><i class="icon-search4"></i></button>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<a href="#" class="btn btn-primary btn-block content-group"><i class="icon-circle-left2 position-left"></i> Go to dashboard</a>
									</div>

									<div class="col-sm-6">
										<a href="#" class="btn btn-default btn-block content-group"><i class="icon-menu7 position-left"></i> Advanced search</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- /error wrapper -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->


		<!-- Footer -->
		<div class="footer text-muted">
			&copy; 2015. <a href="#">Limitless Web App Kit</a> by <a href="http://themeforest.net/user/Kopyov" target="_blank">Eugene Kopyov</a>
		</div>
		<!-- /footer -->

	</div>
	<!-- /page container -->

</body>
</html>
