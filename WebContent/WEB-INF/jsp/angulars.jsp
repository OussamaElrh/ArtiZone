<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Angulars</title>
		 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap.min.css">
  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  			<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
	</head>
	<body ng-app="myApp" ng-controller="crtl" ng-init="getA()">
			<div class="container">
				<br><br><br><br><br>
					  <div ng-hide="re" class="alert alert-danger alert-dismissable">
					    <a ng-click="disable()" href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
					    <strong>Error!</strong> Your username Or password is incorrect
					  </div>
	  				<form method="post" ng-submit="insert()">
	   					 <div class="form-group">
						      <label for="email">Username:</label>
						      <input type="text" class="form-control"  ng-model="username" placeholder="Enter Username">
						    </div>
						    <div class="form-group">
						      <label for="pwd">Password:</label>
						      <input type="password" class="form-control" ng-model="password" placeholder="Enter password">
						    </div>
						    <button type="submit" class="btn btn-default" >Submit</button>
	  				</form>
	  				{{username}}
			</div>
	</body>
	       <script>
        var app=angular.module('myApp',[]);
        app.controller('crtl',function($scope,$http,$window){
        	$scope.re = true;
        	$scope.disable = function(){
        		$scope.re = true;
        		console.log($scope.re);
        	}
            $scope.insert = function(){
            	$http({
    				method : 'POST',
    				url : 'result',
    				data : {'username' : $scope.username,'password' : $scope.password},
    				headers : {
    					'Content-Type' : 'application/json'
    				}
    			}).success(function(data) {
    					if(data==0)
 			           		$scope.re = false;
    					else {
    						 $window.location.href = 'accueil';
    						 console.log(data);
    					}
    						
    			})
          	}            
        })
    </script>

</html>