<%@include file="header.jsp" %>
      <!-- Icon Cards-->
      <div class="row" ng-app="angularTable" ng-controller="listdata" ng-init="get_clients()">
		<div class="col">
			<div class="col-lg-auto">
				<div class="page-header">
					<h2 id="tables">Liste des Clients :</h2>
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
								<td ng-click="sort('id')" align="center" >
									<strong>Id Client </strong> 
									<i class="fa fa-sort" ng-show="sortKey=='clients.id'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('nom')" align="center"><strong>Nom</strong>
									<i class="fa fa-sort" ng-show="sortKey=='clients.nom'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('prenom')" align="center"><strong>Prènom </strong>
									<i class="fa fa-sort-desc" ng-show="sortKey=='clients.prenom'" ng-class="{'fa fa-sort-dec':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('tele')" align="center"><strong>Telephone </strong>
									<i class="fa fa-sort-desc" ng-show="sortKey=='client.tele'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
								<td ng-click="sort('ville')" align="center"><strong>Ville </strong>
									<i class="fa fa-sort-desc" ng-show="sortKey=='client.ville'" ng-class="{'fa fa-sort-desc':reverse,'fa fa-sort-asc':!reverse}"></i>
								</td>
							</tr>
						</thead>
						<tbody>
							<tr dir-paginate="client in clients|orderBy:sortKey:reverse|filter:search|itemsPerPage:5">
								<td align="center">{{client.id}}</td>
								<td align="center">{{client.nom}}</td>
								<td align="center">{{client.prenom}}</td>
								<td align="center">{{client.tele}}</td>
								<td align="center">{{client.ville}}</td>
								
							</tr>
						</tbody>
					</table>
   					<dir-pagination-controls 
								max-size="10" direction-links="true"
					 			boundary-links="true" > 
					 </dir-pagination-controls>
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
			$scope.get_clients = function(){
				$http.get("list_client")
				.success(function(response){ 
					$scope.clients = response;
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
