<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Login</title>
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</head>

<body class="bg-secondary">
  <div class="container" style="margin-top:10%">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">
	  <center><h3>Authentification</h3></center>
	  </div>
      <div class="card-body">
      	${message}
        <form method="post" action="loginOne">
          <div class="form-group">
            <input class="form-control" type="text"  placeholder="Login" name="username" required/>
          </div>
          <div class="form-group">
            <input class="form-control" type="password" placeholder="Mot de passe" name="password" required/>
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox">Retenir le mot de passe </label>
            </div>
          </div>
          <button class="btn btn-primary btn-block">Connexion</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="forgot-password.html">Mot de passe oublié</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
