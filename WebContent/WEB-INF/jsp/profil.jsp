<%@include file="header.jsp" %>
      <div class="row" ng-app="myApp" ng-controller="crtl" ng-init="getA()">
        <div class="col-lg-2">
        </div>
        <div class="col-8">
           

                <form role="form" name="modify">
                                        <div class="form-group">
                                        	 
                                            <div class="form-group">
                                            <label>Nom:</label>
                                            	<div class="input-group">
                               						<input type="text" class="form-control" placeholder="Nom" ng-model="admin.nom"  ng-disabled="d_nom" required>
                               						<span class="input-group-addon" onmouseover=""><i class="fa fa-pencil-square-o" ng-click="f_nom()"></i></span>
                                            	</div>
                                            </div>
                                            <div class="form-group">
                                            <label>Prénom: </label>
                                            	<div class="input-group">
                               						<input type="text" class="form-control" placeholder="Prénom" ng-model="admin.prenom" ng-disabled="d_pre" required>
                               						<span class="input-group-addon"><i class="fa fa-pencil-square-o"  ng-click="f_prenom()"></i></span>
                                            	</div>
                                            </div>
                                            <div class="form-group">
                                            <label>E-mail:</label>
                                            	<div class="input-group">
                               						<input type="email" class="form-control" placeholder="E-mail" ng-model="admin.email" ng-disabled="d_em" required>
                               						<span class="input-group-addon"><i class="fa fa-pencil-square-o" ng-click="f_email()"></i></span>
                                            	</div>
                                            </div>
                                            <div class="form-group">
                                            <label>Téléphone:</label>
                                            	<div class="input-group">
                               						<input type="text" class="form-control" placeholder="Télephone" ng-model="admin.tele" ng-disabled="d_tel" required>
                               						<span class="input-group-addon"><i class="fa fa-pencil-square-o" ng-click="f_tel()"></i></span>
                                            	</div>
                                            </div>
                                            <div class="form-group">
                                            <label>Ville:</label>
                                            	<div class="input-group">
                               						<input type="text" class="form-control" placeholder="Ville" ng-model="admin.ville"  ng-disabled="d_vil" required>
                               						<span class="input-group-addon"><i class="fa fa-pencil-square-o" ng-click="f_vil()" ></i></span>
                                            	</div>
                                            </div>
                                           <div class="form-group">
                                           <label>Login :</label>
                                            	<div class="input-group">
                               						<input type="text" class="form-control" placeholder="Login" ng-model="admin.username"  ng-disabled="d_user" required>
                               						<span class="input-group-addon"><i class="fa fa-pencil-square-o" ng-click="f_user()"></i></span>
                                            	</div>
                                            </div>  
                                            <div class="form-group">               
                                             <label>Password :</label>
                                            	<div class="input-group">
                                            		<span class="input-group-addon"><i class="fa fa-eye" onmouseup="mouseoverPass(this)" onmouseout="mouseoutPass(this)"></i></span>
                               						<input type="Password" class="form-control" placeholder="Password " ng-model="admin.password" id="pawd"  ng-disabled="d_pa" required>
                               						<span class="input-group-addon"><i class="fa fa-pencil-square-o" ng-click="f_pa()"></i></span>
                                            	</div>
                                            </div>
                                            <div class="form-group">                                              
                                              <label>Confirmer Password :</label>
                                            	<div class="input-group">
                                            		<span class="input-group-addon"><i class="fa fa-eye" onmouseup="mopa(this)" onmouseout="mop(this)"></i></span>
                               						<input type="Password" ng-pattern="admin.password" class="form-control" placeholder="Re-Password" ng-model="repassword"  id="rpawd"  ng-keyup="compare()" ng-disabled="d_pa" required>
                               						<span class="input-group-addon"><i class="fa fa-pencil-square-o" ng-click="f_pa()"></i></span>
                                            	</div>
                                            	<span>{{message}}</span>
                                            </div> 
                                            <button type="button" class="btn btn-primary btn-lg btn-block" ng-click="update()">Sauvegarder</button>

                                        </div>
                                    </form>
                              
                            
        </div>
      </div>
    </div>
  </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright @ Artizone 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Etes-vous sure?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×—</span>
            </button>
          </div>
          <div class="modal-body">Appuyer "Déconnexion" ci-dessou si vous voulez quitter.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Annuler:</button>
            <a class="btn btn-primary" href="loginOne">Déconnexion</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin.min.js"></script>
  </div>
</body>
 <script>
        var app=angular.module('myApp',[]);
        app.controller('crtl',function($scope,$http){
        	$scope.d_nom=true;
        	$scope.d_pre=true;
        	$scope.d_vil=true;
        	$scope.d_em=true;
        	$scope.d_tel=true;
        	$scope.d_user=true;
        	$scope.d_pa=true;
        	$scope.f_nom =  function(){
        		$scope.d_nom=false;
        	}
        	$scope.f_prenom =  function(){
        		$scope.d_pre=false;
        	}
        	$scope.f_vil =  function(){
        		$scope.d_vil=false;
        	}
        	$scope.f_tel =  function(){
        		$scope.d_tel=false;
        	}
        	$scope.f_pa =  function(){
        		$scope.d_pa=false;
        	}
        	$scope.f_user =  function(){
        		$scope.d_user=false;
        	}
        	$scope.f_email =  function(){
        		$scope.d_em=false;
        	}
            $scope.getA = function(){
            	  $http({
          		    method : 'GET',
          		    url : 'list'
          		   }).success(function(d) {
                       $scope.admin = d;
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
         		
            $scope.update=function(){
            	
            	if($scope.message != null){
            		$.toaster({ priority : 'danger', message : 'Mots de passe non identique', timeout : '1000'});
            	}else{
            		$http({
        				method : 'POST',
        				url : 'up_ad',
        				data : $scope.admin,
        				headers : {
        					'Content-Type' : 'application/json'
        				}
        			}).success(function(data) {
                		   if(data == 1){
                			   	$.toaster({ priority : 'success', message : 'Modification éffectué avec succès !', timeout : '1000'});
                				$scope.d_nom=true;
                	        	$scope.d_pre=true;
                	        	$scope.d_vil=true;
                	        	$scope.d_em=true;
                	        	$scope.d_tel=true;
                	        	$scope.d_user=true;
                	        	$scope.d_pa=true;
                		   }else{
                			 	$.toaster({ priority : 'danger', message : 'Modification non éffectué  !', timeout : '1000'});
                		   }
                	  })
                	  
            	}
            }
            $scope.compare= function(){
            	if($scope.admin.password != $scope.repassword){
            		$scope.message="mot de passe incorrect !";
            	}else{
            		$scope.message=null;
            	}
            }
        })
       
    </script> 
    
</html>
