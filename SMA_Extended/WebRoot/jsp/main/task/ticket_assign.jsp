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
					<i class="icon-home2 position-left"></i>
					<span class="text-small">Home </span><i class="icon-arrow-right15"></i> Task <i class="icon-arrow-right15"></i> Assignment
					<small class="display-block">Assign The Ticket to the Member</small>
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
		<!-- Page content -->
		<div class="page-content">
			<!-- Main content -->
			<div class="content-wrapper">
			<div class="row">
				<div class="col-lg-8">
				<div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>[#1183]<small> Workaround for OS X selects printing bug</small></h5>
                                        <div class="ibox-tools">
                                            <span class="label label-warning-light pull-right">10 Messages</span>
                                           </div>
                                    </div>
                                    <div class="ibox-content">
				      <div class="social-feed-box">
                            <div class="pull-right social-action dropdown">
                                <button data-toggle="dropdown" class="dropdown-toggle btn-white">
                                    <i class="icon-circle-down2"></i>
                                </button>
                                <ul class="dropdown-menu m-t-xs">
                                    <li><a href="#">Config</a></li>
                                </ul>
                            </div>
                            <div class="social-avatar">
                                <a href="#" class="pull-left">
                                    <img alt="image" src="<s:url value='assets/images/demo/users/face18.jpg'/>">
                                </a>
                                <div class="media-body">
                                    <a href="#">
                                        Andrew Williams
                                    </a>
                                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                </div>
                            </div>
                            <div class="social-body">
                                <p>
                                     Packages and web page editors now use Lorem Ipsum as their
                                    default model text. Page editors now use Lorem Ipsum as their
                                    default model text.
                                </p>
                                <div class="btn-group">
                                    <button class="btn btn-white btn-xs"><i class="fa fa-thumbs-up"></i> Like this!</button>
                                    <button class="btn btn-white btn-xs"><i class="fa fa-comments"></i> Comment</button>
                                    <button class="btn btn-white btn-xs"><i class="fa fa-share"></i> Share</button>
                                </div>
                            </div>
                            <div class="social-footer">


                                <div class="social-comment">
                                    <a href="#" class="pull-left">
                                        <img alt="image" src="<s:url value='assets/images/demo/users/face13.jpg'/>">
                                    </a>
                                    <div class="media-body">
                                        <a href="#">
                                            Andrew Williams
                                        </a>
                                        Making this the first true generator on the Internet. It uses a dictionary of.
                                        <br>
                                        <a href="#" class="small"><i class="fa fa-thumbs-up"></i> 11 Like this!</a> -
                                        <small class="text-muted">10.07.2014</small>
                                    </div>
                                </div>

                                <div class="social-comment">
                                    <a href="#" class="pull-left">
                                        <img alt="image" src="<s:url value='assets/images/demo/users/face20.jpg'/>">
                                    </a>
                                    <div class="media-body">
                                        <textarea class="form-control" placeholder="Write comment..."></textarea>
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
		<!-- Footer -->
	<%@include file="/jsp/global/footer.jsp"%>
		<!-- /footer -->
	</div>
	<!-- /page container -->
</body>
</html>
