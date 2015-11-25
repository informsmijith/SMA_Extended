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
	<script type="text/javascript" src="<s:url value='assets/js/plugins/forms/selects/bootstrap_multiselect.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/tables/datatables/datatables.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/tables/datatables/extensions/responsive.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/core/libraries/jquery_ui/interactions.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/plugins/forms/selects/select2.min.js'/>"></script>
    
	<script type="text/javascript" src="<s:url value='assets/js/core/app.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/custom/custom.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/pages/form_select2.js'/>"></script>
	<script type="text/javascript" src="<s:url value='assets/js/pages/datatables_responsive.js'/>"></script>
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
					<small class="display-block">Tickets are Listed and Assign them each Tickets..</small>
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
				   	<div class="panel panel-flat">
							<div class="panel-heading">
								<h6 class="panel-title">Ticket Assignment</h6>
								<div class="heading-elements">
									<span class="label bg-success heading-text">28 active</span>
									<ul class="icons-list">
				                		<li class="dropdown">
				                			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i> <span class="caret"></span></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="icon-sync"></i> Update data</a></li>
												<li><a href="#"><i class="icon-list-unordered"></i> Detailed log</a></li>
												<li><a href="#"><i class="icon-pie5"></i> Statistics</a></li>
												<li class="divider"></li>
												<li><a href="#"><i class="icon-cross3"></i> Clear list</a></li>
											</ul>
				                		</li>
				                	</ul>
			                	</div>
							</div>
							<form id="form-assign" action="Ticket-Assign" method="post">
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th style="width: 50px">Due</th>
											<th style="width: 300px;">User</th>
											<th>Description</th>
											<th class="text-center" style="width: 20px;"><i class="icon-arrow-down12"></i></th>
										</tr>
									</thead>
									<tbody>
										<tr class="active border-double">
											<td colspan="3">Active tickets</td>
											<td class="text-right">
												<span class="badge bg-blue">24</span>
											</td>
										</tr>

										<tr>
											<td class="text-center">
												<h6 class="no-margin">12 <small class="display-block text-size-small no-margin">hours</small></h6>
											</td>
											<td>
												<div class="media-left media-middle">
													<a href="#" class="btn bg-teal-400 btn-rounded btn-icon btn-xs">
														<span class="letter-icon"></span>
													</a>
												</div>

												<div class="media-body">
													<a href="#" class="display-inline-block text-default text-semibold letter-icon-title">Annabelle Doney</a>
													<div class="text-muted text-size-small"><span class="status-mark border-blue position-left"></span> Active</div>
												</div>
											</td>
											<td>
												<a href="javascript" class="text-default display-inline-block" data-toggle="modal" data-target=".bs-example-modal-bottom">
													<span class="text-semibold">[#1183] Workaround for OS X selects printing bug</span>
													<span class="display-block text-muted">Chrome fixed the bug several versions ago, thus rendering this...</span>
												</a>
											</td>
											<td class="text-center">
												<ul class="icons-list">
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i></a>
														<ul class="dropdown-menu dropdown-menu-right">
															<li><a href="#"><i class="icon-undo"></i> Quick reply</a></li>
															<li><a href="#"><i class="icon-history"></i> Full history</a></li>
															<li class="divider"></li>
															<li><a href="#"><i class="icon-checkmark3 text-success"></i> Assign Ticket</a></li>
															<li><a href="#"><i class="icon-cross2 text-danger"></i> Close Ticket</a></li>
														</ul>
													</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="text-center">
												<h6 class="no-margin">16 <small class="display-block text-size-small no-margin">hours</small></h6>
											</td>
											<td>
												<div class="media-left media-middle">
													<a href="#"><img src="assets/images/demo/users/face15.jpg" class="img-circle img-xs" alt=""></a>
												</div>

												<div class="media-body">
													<a href="#" class="display-inline-block text-default text-semibold letter-icon-title">Chris Macintyre</a>
													<div class="text-muted text-size-small"><span class="status-mark border-blue position-left"></span> Active</div>
												</div>
											</td>
											<td>
												<a href="javascript" class="text-default display-inline-block" data-toggle="modal" data-target=".bs-example-modal-bottom">
													<span class="text-semibold">[#1249] Vertically center carousel controls</span>
													<span class="display-block text-muted">Try any carousel control and reduce the screen width below...</span>
												</a>
											</td>
											<td class="text-center">
												<ul class="icons-list">
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i></a>
														<ul class="dropdown-menu dropdown-menu-right">
															<li><a href="#"><i class="icon-undo"></i> Quick reply</a></li>
															<li><a href="#"><i class="icon-history"></i> Full history</a></li>
															<li class="divider"></li>
															<li><a href="#"><i class="icon-checkmark3 text-success"></i> Assign Ticket</a></li>
															<li><a href="#"><i class="icon-cross2 text-danger"></i> Close Ticket</a></li>
														</ul>
													</li>
												 </ul>
											</td>
										</tr>

										<tr>
											<td class="text-center">
												<h6 class="no-margin">20 <small class="display-block text-size-small no-margin">hours</small></h6>
											</td>
											<td>
												<div class="media-left media-middle">
													<a href="#" class="btn bg-blue btn-rounded btn-icon btn-xs">
														<span class="letter-icon"></span>
													</a>
												</div>

												<div class="media-body">
													<a href="#" class="display-inline-block text-default text-semibold letter-icon-title">Robert Hauber</a>
													<div class="text-muted text-size-small"><span class="status-mark border-blue position-left"></span> Active</div>
												</div>
											</td>
											<td>
												<a href="javascript" class="text-default display-inline-block" data-toggle="modal" data-target=".bs-example-modal-bottom">
													<span class="text-semibold">[#1254] Inaccurate small pagination height</span>
													<span class="display-block text-muted">The height of pagination elements is not consistent with...</span>
												</a>
											</td>
											<td class="text-center">
											 <ul class="icons-list">
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i></a>
														<ul class="dropdown-menu dropdown-menu-right">
															<li><a href="#"><i class="icon-undo"></i> Quick reply</a></li>
															<li><a href="#"><i class="icon-history"></i> Full history</a></li>
															<li class="divider"></li>
															<li><a href="#"><i class="icon-checkmark3 text-success"></i> Assign Ticket</a></li>
															<li><a href="#"><i class="icon-cross2 text-danger"></i> Close Ticket</a></li>
														</ul>
													</li>
												 </ul>
											</td>
										</tr>

										<tr>
											<td class="text-center">
												<h6 class="no-margin">40 <small class="display-block text-size-small no-margin">hours</small></h6>
											</td>
											<td>
												<div class="media-left media-middle">
													<a href="#" class="btn bg-warning-400 btn-rounded btn-icon btn-xs">
														<span class="letter-icon"></span>
													</a>
												</div>

												<div class="media-body">
													<a href="#" class="display-inline-block text-default text-semibold letter-icon-title">Dex Sponheim</a>
													<div class="text-muted text-size-small"><span class="status-mark border-blue position-left"></span> Active</div>
												</div>
											</td>
											<td>
												<a href="javascript" class="text-default display-inline-block" data-toggle="modal" data-target=".bs-example-modal-bottom">
													<span class="text-semibold">[#1184] Round grid column gutter operations</span>
													<span class="display-block text-muted">Left rounds up, right rounds down. should keep everything...</span>
												</a>
											</td>
											<td class="text-center">
												<ul class="icons-list">
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i></a>
														<ul class="dropdown-menu dropdown-menu-right">
															<li><a href="#"><i class="icon-undo"></i> Quick reply</a></li>
															<li><a href="#"><i class="icon-history"></i> Full history</a></li>
															<li class="divider"></li>
															<li><a href="javascript:;" id="tkt-assign" data-toggle="modal" data-target="#myModal5"><i class="icon-checkmark3 text-success"></i> Assign Ticket</a></li>
															<li><a href="#"><i class="icon-cross2 text-danger"></i> Close Ticket</a></li>
														</ul>
													</li>
												 </ul>
											</td>
										</tr>
																				<tr>
											<td class="text-center">
												<h6 class="no-margin">12 <small class="display-block text-size-small no-margin">hours</small></h6>
											</td>
											<td>
												<div class="media-left media-middle">
													<a href="#" class="btn bg-teal-400 btn-rounded btn-icon btn-xs">
														<span class="letter-icon"></span>
													</a>
												</div>

												<div class="media-body">
													<a href="#" class="display-inline-block text-default text-semibold letter-icon-title">Annabelle Doney</a>
													<div class="text-muted text-size-small"><span class="status-mark border-blue position-left"></span> Active</div>
												</div>
											</td>
											<td>
												<a href="javascript" class="text-default display-inline-block" data-toggle="modal" data-target=".bs-example-modal-bottom">
													<span class="text-semibold">[#1183] Workaround for OS X selects printing bug</span>
													<span class="display-block text-muted">Chrome fixed the bug several versions ago, thus rendering this...</span>
												</a>
											</td>
											<td class="text-center">
												<ul class="icons-list">
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i></a>
														<ul class="dropdown-menu dropdown-menu-right">
															<li><a href="#"><i class="icon-undo"></i> Quick reply</a></li>
															<li><a href="#"><i class="icon-history"></i> Full history</a></li>
															<li class="divider"></li>
															<li><a href="#"><i class="icon-checkmark3 text-success"></i> Assign Ticket</a></li>
															<li><a href="#"><i class="icon-cross2 text-danger"></i> Close Ticket</a></li>
														</ul>
													</li>
												</ul>
											</td>
										</tr>
																				<tr>
											<td class="text-center">
												<h6 class="no-margin">12 <small class="display-block text-size-small no-margin">hours</small></h6>
											</td>
											<td>
												<div class="media-left media-middle">
													<a href="#" class="btn bg-teal-400 btn-rounded btn-icon btn-xs">
														<span class="letter-icon"></span>
													</a>
												</div>

												<div class="media-body">
													<a href="#" class="display-inline-block text-default text-semibold letter-icon-title">Annabelle Doney</a>
													<div class="text-muted text-size-small"><span class="status-mark border-blue position-left"></span> Active</div>
												</div>
											</td>
											<td>
												<a href="javascript" class="text-default display-inline-block" data-toggle="modal" data-target=".bs-example-modal-bottom">
													<span class="text-semibold">[#1183] Workaround for OS X selects printing bug</span>
													<span class="display-block text-muted">Chrome fixed the bug several versions ago, thus rendering this...</span>
												</a>
											</td>
											<td class="text-center">
												<ul class="icons-list">
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i></a>
														<ul class="dropdown-menu dropdown-menu-right">
															<li><a href="#"><i class="icon-undo"></i> Quick reply</a></li>
															<li><a href="#"><i class="icon-history"></i> Full history</a></li>
															<li class="divider"></li>
															<li><a href="#"><i class="icon-checkmark3 text-success"></i> Assign Ticket</a></li>
															<li><a href="#"><i class="icon-cross2 text-danger"></i> Close Ticket</a></li>
														</ul>
													</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</form>
						</div>	
			      </div>
			   </div>
            </div>
            <!-- /Main content -->
         </div>
     <!-- /Page content -->
		<!-- Footer -->
	<%@include file="/jsp/global/footer.jsp"%>
		<!-- /footer -->
					<!-- Down Aside -->
										<div class="modal fade modal-aside vertical bottom bs-example-modal-bottom"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
											<div class="modal-dialog modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="myModalLabel">Ticket title</h4>
													</div>
													<div class="modal-body">
														Ticket Content
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary btn-o" data-dismiss="modal">
															Close
														</button>
														<button type="button" class="btn btn-primary">
															Assign
														</button>
													</div>
												</div>
											</div>
										</div>
				<!-- /Down Aside -->
				<!-- Select User -->
				          <div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                             <h5>Ticket Assignment</h5>
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        </div>
                                        <div class="modal-body">
                                        <div class="row">
                                        <div class="col-lg-3 set-align">
                                            <div class="col-lg-6">
                                            	<input type="radio" name="intType" id="intType1" value="1" checked> Team                                       
                                            </div>
                                            <div class="col-lg-6">
                                            	<input type="radio" name="intType" id="intType2" value="2" > Individual
                                            </div>
                                        </div>
                                           <div class="col-lg-9">
												<div class="form-group">
																	<select multiple="multiple" data-placeholder="Select a state..." class="select-icons">
																		<optgroup label="Services">
																			<option value="wordpress2" data-icon="wordpress2">Wordpress</option>
																			<option value="tumblr2" data-icon="tumblr2">Tumblr</option>
																			<option value="stumbleupon" data-icon="stumbleupon">Stumble upon</option>
																			<option value="pinterest2" data-icon="pinterest2">Pinterest</option>
																			<option value="lastfm2" data-icon="lastfm2">Lastfm</option>
																		</optgroup>
																		<optgroup label="File types">
																			<option value="pdf" data-icon="file-pdf">PDF</option>
																			<option value="word" data-icon="file-word">Word</option>
																			<option value="excel" data-icon="file-excel">Excel</option>
																			<option value="openoffice" data-icon="file-openoffice">Open office</option>
																		</optgroup>
																		<optgroup label="Browsers">
																			<option value="chrome" data-icon="chrome" selected="selected">Chrome</option>
																			<option value="firefox" data-icon="firefox" selected="selected">Firefox</option>
																			<option value="safari" data-icon="safari" selected="selected">Safari</option>
																			<option value="opera" data-icon="opera">Opera</option>
																			<option value="IE" data-icon="IE">IE</option>
																		</optgroup>
																	</select>
																</div>
											 </div>
											</div>
												<div class="panel panel-flat">
												 <div class="panel-heading">
														<h5 class="panel-title"><span class="ttype">Team</span> History</h5>
														<div class="heading-elements">
															<ul class="icons-list">
										                		<li><a data-action="collapse"></a></li>
										                		<li><a data-action="reload"></a></li>
										                		<li><a data-action="close"></a></li>
										                	</ul>
									                	</div>
													</div>
													<table class="table datatable-responsive-column-controlled">
														<thead>
															<tr>
												                <th>#Ticket</th>
												                <th>User</th>
												                <th>Description</th>
												                <th>Status</th>
												            </tr>
														</thead>
														<tbody>
															<tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-info">Approval</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-danger">Progress</span></td>
												            </tr>
												            <tr>
												               <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-success">Closed</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-default">Approved</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-info">Approval</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-default">Approved</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-info">Approval</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												               <td><span class="label label-success">Closed</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                 <td><span class="label label-success">Closed</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												               <td><span class="label label-info">Approval</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												               <td><span class="label label-info">Approval</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-info">Closed</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-success">Closed</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-danger">Progress</span></td>
												            </tr>
												            <tr>
												                <td>#1289</td>
												                <td>Garrett Winters</td>
												                <td>Chrome fixed the bug several versions ago, thus rendering this...</td>
												                <td><span class="label label-danger">Progress</span></td>
												            </tr>
														</tbody>
													</table>
												</div>
												<!-- /mouseover activation -->											
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">Discard</button>
                                            <button type="button" class="btn btn-primary">Continue</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
				<!-- /Select User -->
	</div>
	<!-- /page container -->
</body>
</html>
