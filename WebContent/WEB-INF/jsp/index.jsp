<%@include file="header.jsp" %>
      <!-- Icon Cards-->
      <div class="row" ng-app="angularTable" ng-controller="listdata" ng-init="get_artisant()">
		<div class="col">
			<div class="col-lg-auto">
				<div class="page-header">
					<h2 id="tables">Liste des artisants :</h2>
				</div>
				<div class="bs-component" ng-controller="listdata">
					<form class="form-inline">
						<div class="form-group">
							<div class="input-group"><span class="input-group-addon"><i class="fa fa-search"></i></span>                                            	
							<input type="text" ng-model="search" class="form-control" placeholder="Recherche">
					</div>
				</div>
					</form>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<td ng-click="sort('id')" align="center" ><strong>Id Artisant </strong> 
									<i class="fa fa-sort" ng-show="sortKey=='artisants.id'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('nom')" align="center"><strong>Nom</strong>
									<i class="fa fa-sort" ng-show="sortKey=='artisants.nom'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('prenom')" align="center"><strong>Prènom </strong>
									<i class="fa fa-sort-desc" ng-show="sortKey=='artisants.prenom'" ng-class="{'fa fa-sort-dec':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('tele')" align="center"><strong>Telephone </strong>
									<i class="fa fa-sort-desc" ng-show="sortKey=='artisant.tele'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('ville')" align="center"><strong>Ville </strong>
									<i class="fa fa-sort-desc" ng-show="sortKey=='artisant.ville'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('confirmer')" align="center"><strong>Confirmer </strong>
									<i class="fa fa-sort-desc" ng-show="sortKey=='artisant.confirmer'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('referent')" align="center"><strong>Référant </strong>
									<i class="fa fa-sort-desc" ng-show="sortKey=='artisant.referant'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
							</tr>
						</thead>
						<tbody>
							<tr dir-paginate="artisant in artisants|orderBy:sortKey:reverse|filter:search|itemsPerPage:5">
								<td align="center">{{artisant.id}}</td>
								<td align="center">{{artisant.nom}}</td>
								<td align="center">{{artisant.prenom}}</td>
								<td align="center">{{artisant.tele}}</td>
								<td align="center">{{artisant.ville}}</td>
								<td align="center">
									<div ng-switch on="artisant.confirmer">
                                      <div ng-switch-when="0">
                                      <i class="fa fa-remove" ng-click="modify_conf(artisant)"></i>
                                       </div>                                       
                                       <div ng-switch-when="1">
                                           <i class="fa fa-check" ng-click="modify_conf(artisant)"></i>
                                       </div>
                                    </div>
								</td>
								<td align="center">
								<div ng-switch on="artisant.referant">
                                      <div ng-switch-when="0">
                                      <i class="fa fa-remove"></i>
                                       </div>                                       
                                       <div ng-switch-when="1">
                                           <i class="fa fa-check"></i>
                                       </div>
                                    </div>
                                  </td>
							</tr>
						</tbody>
					</table> 
					<dir-pagination-controls
						max-size="5"
						direction-links="true"
						boundary-links="true" >
					</dir-pagination-controls>
				</div>
			</div>
	</div>
</div>

    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright @ ArtiZone 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    

	<script>
		var app = angular.module('angularTable', ['angularUtils.directives.dirPagination']);
		app.controller('listdata',function($scope, $http){
			$scope.get_artisant = function(){
				$http.get("list_ar")
				.success(function(response){ 
					$scope.artisants = response;
				})
			}
			$scope.modify_conf = function(obj){
				
				$http({
    				method : 'POST',
    				url : 'modify_conf',
    				data : obj,
    				headers : {
    					'Content-Type' : 'application/json'
    				}
    			}).success(function(data){
    				if(data==1){
    					$.toaster({ priority : 'success', message : 'Artisant confirmer !', timeout : '1000'});
    					$scope.get_artisant();
    				}
    				else
    					$.toaster({ priority : 'danger', message : 'Artisant non confirmer !', timeout : '1000'});
    			})
			}
			$scope.sort = function(keyname){
				$scope.sortKey = keyname;   //set the sortKey to the param passed
				$scope.reverse = !$scope.reverse; //if true make it false and vice versa
			}
			})
	</script>
	
  </div>
</body>

</html>
