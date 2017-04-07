/***
 * 
 * 
 */
indexapp.controller('ctrlpaypalForm', function($scope, $location, $http) {
	console.log("=================> calling ctrlpaypalForm ...");
});


/***
 * 
 * 
 */
indexapp.controller('appepaypalForm', [ '$scope', '$location', '$routeParams', '$filter', '$window', '$http', 'tripFactory', 'MyService', function($scope, $location, $routeParams, $filter, $window, $http, tripFactory, MyService) {
	console.log("=================> calling appepaypalForm ...");
	$scope.tripObj = MyService.getTrip();
	$scope.vehicles = {};
	console.log("=================> calling OBJ==="+$scope.tripObj);
	console.log("=================> calling first==="+$scope.tripObj.passanger.first_name);
	console.log("=================> calling last==="+$scope.tripObj.passanger.first_name);
	
	/***************** GET *********************/
	getVehicleSyncData();
	function getVehicleSyncData() {
		tripFactory.getVehicleSync()
		.then(function(response){
				console.log('================= success data got=>'+response.data);
				angular.forEach(response.data, function(value, key) {
					  if(value.id === $scope.tripObj.travelDetail.vehicle_id){
						  $scope.vehicles = value;
					  }
				});
			},function(error){
				console.log('================= error occer.');	
			}
		);
	};	

	
	$scope.goback_submit = function() {
		MyService.setTrip('');
		$location.url('/dashboard');
		$window.location.reload();
		$route.reload();
	};

	$scope.checkout_submit = function() {
	    $('#myModal404').on('show', function () { });
	    $('#myModal404').modal('show');
	};
	
}]);

