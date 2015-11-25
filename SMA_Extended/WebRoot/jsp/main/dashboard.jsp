<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dashboard | SMA-Extended v1.2</title>

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
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script type="text/javascript" src="<s:url value='assets/js/plugins/visualization/d3/d3.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/visualization/d3/d3_tooltip.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/forms/styling/switchery.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/forms/styling/uniform.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/forms/selects/bootstrap_multiselect.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/ui/moment/moment.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/pickers/daterangepicker.js'/>"></script>

	<script type="text/javascript" src="<s:url value='assets/js/core/app.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/pages/dashboard.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/custom/custom.js'/>"></script>
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
	<!-- Second navbar -->
	<%@include file="/jsp/global/menu.jsp"%>
	<!-- /second navbar -->
	<!-- Page header -->
	<div class="page-header">
		<div class="page-header-content">
			<div class="page-title">
				<h4>
					<i class="icon-arrow-left52 position-left"></i>
					<span class="text-semibold">Home</span> - Dashboard
					<small class="display-block">Good morning, Victoria Baker!</small>
				</h4>
			</div>

			<div class="heading-elements">
				<div class="heading-btn-group">
					<a href="#" class="btn btn-link btn-float has-text"><i class="icon-bars-alt text-primary"></i><span>Statistics</span></a>
					<a href="#" class="btn btn-link btn-float has-text"><i class="icon-calculator text-primary"></i> <span>Invoices</span></a>
					<a href="#" class="btn btn-link btn-float has-text"><i class="icon-calendar5 text-primary"></i> <span>Schedule</span></a>
				</div>
			</div>
		</div>
	</div>
	<!-- /page header -->


	<!-- Page container -->
	<div class="page-container">
	
	
		<!-- Footer -->
	<%@include file="/jsp/global/footer.jsp"%>
		<!-- /footer -->
	</div>
	<!-- /page container -->
</body>
</html>
