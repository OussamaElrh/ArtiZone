<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% 
HttpSession sessio= request.getSession();
if(sessio.getAttribute("login")==null)
	response.sendRedirect("loginOne");%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>ArtiZone | Profil</title>
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->7
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css">
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/js/bootstrap-theme.min.css" rel="stylesheet">
   <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/dirPagination.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.toaster.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/angular-mocks.js"></script>
   <!-- favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/logo/favicon.ico" width="100px" height="50px" >
  <link href="${pageContext.request.contextPath}/resources/css/fontawesome.css" rel="stylesheet">
  <script type="text/javascript">
 
  	function mouseoverPass(obj) {
  		var obj = document.getElementById('pawd');
  		obj.type = "text";
	}
	function mouseoutPass(obj) {
  		var obj = document.getElementById('pawd');
  		obj.type = "password";
	}
	function mopa(obj) {
  		var obj = document.getElementById('rpawd');
  		obj.type = "text";
	}
	function mop(obj) {
  		var obj = document.getElementById('rpawd');
  		obj.type = "password";
	}
  </script>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top" >
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index">
      <img src="${pageContext.request.contextPath}/resources/logo/ArtiZone.png" width=40% height="40 px"/>
    </a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Acceuil">
          <a class="nav-link" href="index.html">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Acceuil</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="profil">
          <a class="nav-link" href="admin">
            <i class="fa fa-fw fa-user"></i>
            <span class="nav-link-text">Profil</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Artisants">
          <a class="nav-link" href="index">
            <i class="fa fa-fw fa-group"></i>
            <span class="nav-link-text">Artisants</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Clients">
          <a class="nav-link" href="index.html">
            <i class="fa fa-fw fa-users"></i>
            <span class="nav-link-text">Clients</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
            <div class="dropdown-divider"></div>
            <div class="dropdown-divider"></div>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Déconnexion</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Acceuil</a>
        </li>
        <li class="breadcrumb-item active">Profil</li>
      </ol>
