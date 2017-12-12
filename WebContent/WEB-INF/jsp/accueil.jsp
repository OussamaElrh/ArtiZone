<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% 
HttpSession sessio= request.getSession();
if(sessio.getAttribute("login")==null)
	response.sendRedirect("loginOne");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>

<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="crtl" ng-init="getA()">

	${msg}
	<table border="1">
	<tr><td><input type="text" ng-model="fi.username"/></td><td><input type="text" ng-model="fi.password"/></td></tr>
   	<tr><td>username</td><td>password</td><td>nom</td><td>prenom</td><td>tele</td><td>ville</td><td>email</td></tr>
   	<tr ng-repeat="val in msg | filter:fi">
   		<td>{{val.username}}</td>
   		<td>{{val.password}}</td>
   		<td>{{val.nom}}</td>
   		<td>{{val.prenom}}</td>
   		<td>{{val.tele}}</td>
   		<td>{{val.ville}}</td>
   		<td>{{val.email}}</td>
   	</tr>
   </table>
</body>

       <script>
        var app=angular.module('myApp',[]);
        app.controller('crtl',function($scope,$http){
            $scope.getA = function(){
            	  $http({
          		    method : 'GET',
          		    url : 'list'
          		   }).success(function(d) {
                       $scope.msg = d;
                       console.log(d);
                   })
            }
            $scope.insert = function(){
            	$http({
    				method : 'POST',
    				url : 'list',
    				data : {'username' : $scope.username,'password' : $scope.password},
    				headers : {
    					'Content-Type' : 'application/json'
    				}
    			}).success(function(data) {
            		    $scope.data = data;
            	  })
          	}            
        })
    </script> 
</html>