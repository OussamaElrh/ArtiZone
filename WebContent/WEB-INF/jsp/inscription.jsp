<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.toaster.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/index2.js"></script>
	
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/js/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
	
</head>
<body ng-app="myApp" ng-controller="crtl">
 	
 <input type="button" name="next" class="next action-button" value="Inscription" ng-click="showZero()"/>
 	
	<div id="msform" ng-show="valid">
 	
 	<fieldset>
					  
    <h2 class="fs-title">Merci pour votre inscription !</h2>
    <h3 class="fs-subtitle">A fin de la completer veuillez confirmez votre email :</h3>
    <input type="text" ng-model="code"/>
    <input type="button" name="valider" class="next action-button" value="Valider" ng-click="confirmer()"/>
    
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
    <button name="btn" ng-click="client();insert()" value="inscriClt">S'inscrire autant que client</button> 
	<button name="btn" ng-click="artisant();insert()" value="inscriArt">S'inscrire autant qu'artisant</button>
  	</fieldset>
  	
  	</div>
  	
 	
 	</form>
 	
 	
 	
</body>

	<script>
        var app=angular.module('myApp',[]);
        app.controller('crtl',function($scope,$http){
        	$scope.one = true;
        	$scope.two = false;
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
        		console.log($scope.utilisateur.nom);
        		
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
    						if(data==0)
 			           		$.toaster({priority : 'danger', message : 'Cet utilisateur existe déjà !'});
    							else {
    								 $scope.hideZero();
    								 $scope.showValid();
    								}			
    					})}
        		
        		else if ($scope.action == "inscriClt"){
            	
            		$http({
    					method : 'POST',
    					url : 'inscriptionClient',
    					data : $scope.utilisateur,
    					headers : {
    						'Content-Type' : 'application/json'
    					}
    				}).success(function(data) {
    					if(data==0)
 			           		$.toaster({priority : 'danger', message : 'Cet utilisateur existe déjà !'});
    					else {
    						 $scope.hideZero();
    						 $scope.showValid();
    					}			
    			})}
          	};
          	
          	
          	
          
            	
        })
    </script>
    
</html>