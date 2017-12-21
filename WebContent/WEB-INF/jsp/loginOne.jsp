<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Login</title>
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/fontawesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/angular.js"></script>
  
</head>

<body class="bg-secondary" ng-app="myApp" ng-controller="crtl" init="getA()">
<div id="msform" ng-show="valid">
 	
 	<fieldset>
					  
    <h2 class="fs-title">Merci pour votre inscription !</h2>
    <h3 class="fs-subtitle">A fin de la completer veuillez confirmez votre email :</h3>
    <input type="text" ng-model="code"/>
    <input type="button" name="valider" class="next action-button" value="Valider" ng-click="confirmer();"/>
    
  	</fieldset>
  	
  	</div>
  	
 	<form method="post" id="msform" ng-hide="zero">
  
 	<div ng-show="one">
 	
 	<fieldset>
					  
    <h2 class="fs-title">Créer votre compte</h2>
    <h3 class="fs-subtitle">Première étape</h3>
    <input type="text" ng-model="utilisateur.email" placeholder="Email" />
    <input type="text"  ng-model="utilisateur.username" placeholder="Nom d'utilisateur" />
    <input type="password"  ng-model="utilisateur.password" placeholder="Mot de passe" />
    <input type="password"  ng-model="confirm" placeholder="Confirmez le mot de passe" />
    <input type="button" name="next" class="next action-button" value="Suivant" ng-click="showTwo();"/>
    <input type="button" name="close" class="next action-button" value="Annuler" ng-click="hideZero();"/>
    
  	</fieldset>
  	
  	</div>
    
  	
  	<div ng-show="two">
    
    <fieldset>
    
    <div ng-hide="re" class="alert alert-danger alert-dismissable">
		<a ng-click="disable()" href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
		<strong>Erreur !</strong> {{message}}
	</div>
	
    <h2 class="fs-title">Détails personnels</h2>
    <h3 class="fs-subtitle">Deuxième étape</h3>
    <input type="text" ng-model="utilisateur.nom" placeholder="Nom" />
    <input type="text" ng-model="utilisateur.prenom" placeholder="Prénom" />
    <input type="text" ng-model="utilisateur.tele" placeholder="Téléphone" />
    <!--  <input type="text" name="ville" placeholder="Ville" /> -->
    
    <select  ng-model="utilisateur.ville">
    	<!-- <option ng-repeat="val in villes">{{val}}</option> -->
    	
    	<%
    	
    	//FileReader fr = new FileReader(request.getContextPath()+"/WebContent/resources/text/villes.txt");
    	FileReader fr = new FileReader("C:/villes.txt");
		BufferedReader br = new BufferedReader(fr);
		String ville;
		while(( ville = br.readLine()) != null)
			out.println("<option value="+ville+">"+ville+"</option>");
    	%>
    </select>
    
    <input type="button" name="previous" class="previous action-button" value="Précédent" ng-click="showOne();"/>
   	<input type="button" name="close" class="next action-button" value="Annuler" ng-click="hideZero();"/>
   	<br>
    <button name="btn" ng-click="client();insert();" value="inscriClt">S'inscrire autant que client</button> 
	<button name="btn" ng-click="artisant();insert();" value="inscriArt">S'inscrire autant qu'artisant</button>
  	</fieldset>
  	
  	</div>
  	
 	
 	</form>
      </div>
    </div>
  <div class="container" style="margin-top:10%">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header" ng-hide="value">
	  <center><h3>Authentification</h3></center>
	  </div>
      <div class="card-body" ng-hide="value">
      	${message}
        <form method="post" action="loginOne">
          <div class="form-group">
            <input class="form-control" type="text"  placeholder="Login" name="username" value= "${logged}" required/>
          </div>
          <div class="form-group">
            <input class="form-control" type="password" placeholder="Mot de passe" name="password" value= "${pwd}" required/>
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="check" ng-click="ch_v()" value="true">Retenir le mot de passe 
               </label>
            </div>
          </div>
          <button class="btn btn-primary btn-block">Connexion</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="forgot-password.html">Mot de passe oublié</a>
        </div>
        <div class="text-center">
        <a class="label label-info" ng-click="showZero();verify()" href="">Vous n'avez pas de compte? rejoignez nous !</a>
        </div>
        
  </div>
	
  
  
  
  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.toaster.js"></script>
</body>
  <script>
  	var app = angular.module("myApp",[]);
  	app.controller('crtl',function($scope,$http){
  		$scope.val=false;
  		$scope.value = false;
    	$scope.ch_v=function(){
      		console.log($scope.val);
    		if($scope.val == true){
    			$scope.val = false;
    		}else{
    			$scope.val=true;
    		}
    	}
    	$scope.one = true;
    	$scope.two = false;
    	$scope.zero = true;
    	$scope.zero = true;
    	$scope.re = true;
    	$scope.disable = function(){
    		$scope.re = true;
    		console.log($scope.re);
    	}
    	
    	 $scope.getA = function(){
       	  $http({
     		    method : 'GET',
     		    url : 'villes'
     		   }).success(function(d) {
                  $scope.villes = d;
                  console.log(d);
              })
       }
    	$scope.verify = function(){
    		if($scope.zero){
    			$scope.value = false;
    		}else{
    			$scope.value=true;
    		}
    	}
    	$scope.showValid = function () {
      		$scope.valid = true;
      	};
      	
    	$scope.hideZero = function () {
     		$scope.zero = true;
     	};
     	
     	$scope.showZero = function () {
      		$scope.zero = false;
      	};
      	
      	$scope.hideError = function () {
     		$scope.error = true;
     	};
     	
     	 $scope.showError = function () {
      		$scope.error = false;
      	};

    	 
    	$scope.showOne = function () {
    		$scope.two = false;
    		$scope.one = true;
    	};

    	
    	$scope.showTwo = function () {
    		$scope.two = true;
    		$scope.one = false;
    		
    	}; 
    	
    	$scope.utilisateur = {
    			'nom':"", 'prenom':"", 'ville':"", 'email':"", 'tele':"", 'username':"", 'password':""
    	};
    	
    	$scope.action = "";
    	
    	$scope.client = function () {
      		$scope.action = 'inscriClt';
      	};
      	
      	$scope.artisant = function () {
      		$scope.action = 'inscriArt';
      	};
      	
      	$scope.confirmer = function () {
         	  $http({
       		    method : 'POST',
       		    url : 'validation',
       		 	data : $scope.code,
				headers : {'Content-Type' : 'application/json'}
       		  
         	  }).success(function(data) {
						if(data==0)
			           			$.toaster({priority : 'danger', message : 'Le code est incorrecte !'});
						else {
 			           		$.toaster({priority : 'danger', message : '.. !'});
						}
					})							
         	  };
    	
    		$scope.insert = function(){
    		if($scope.utilisateur.nom=="" || $scope.utilisateur.prenom == "" ||
    				$scope.utilisateur.ville == "" || $scope.utilisateur.tele == "" ||
    				$scope.utilisateur.email== "" || $scope.utilisateur.username == "" ||
    				$scope.utilisateur.password == "" || $scope.confirm == ""){
    			$scope.message = "Veuillez remplir tous les champs !";
    			$scope.re = false;
    		}
    		else if($scope.utilisateur.password != $scope.confirm){
    			$scope.message = "Veuillez confirmer de nouveau votre mot de passe !";
    			$scope.re = false;
    		}
    		else if ($scope.action == "inscriArt"){
        		$http({
					method : 'POST',
					url : 'inscriptionArtisant',
					data : $scope.utilisateur,
					headers : {
						'Content-Type' : 'application/json'
						}
					}).success(function(data) {
						console.log(data)
						if(data==0)
			           		$.toaster({priority : 'danger', message : 'Cet utilisateur existe déjà !'});
							else {
								 $scope.hideZero();
								 $scope.showValid();
								}			
					})
			}
    		
    		else if ($scope.action == "inscriClt"){
        		$http({
					method : 'POST',
					url : 'inscriptionClient',
					data : $scope.utilisateur,
					headers : {'Content-Type' : 'application/json'}
				}).success(function(data) {
					console.log(data);
					if(data==0){
						$.toaster({priority : 'danger', message : 'Cet utilisateur existe déjà !'});
					}
			           		
					else {
						 $scope.hideZero();
						 $scope.showValid();
					}			
			})}
      	};
      	
  	})
  </script>

</html>
