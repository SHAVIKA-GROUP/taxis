/***
 * 
 * 
 */
indexapp.controller('ctrlemailComfirmed', function($scope, $location, $http) {
	console.log("=================> calling ctrlemailComfirmed ...");
});


/***
 * 
 * 
 */
indexapp.controller('appemailconfirmation', [ '$scope', '$location', '$routeParams', '$filter', '$window', '$http', '$route', 'MyService', function($scope, $location, $routeParams, $filter, $window, $http, $route, MyService) {
	console.log("=================> calling appemailconfirmation ...");
	$scope.tripObj = MyService.getTrip();
	console.log("=================> calling OBJ==="+$scope.tripObj);
	console.log("=================> calling first==="+$scope.tripObj.passanger.first_name);
	console.log("=================> calling last==="+$scope.tripObj.passanger.first_name);
	
	$scope.goback_submit = function() {
		MyService.setTrip('');
		$location.url('/dashboard');
		$window.location.reload();
		$route.reload();
	};

}]);

