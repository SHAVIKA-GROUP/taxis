var indexapp = angular.module('indexApp', ['ngRoute', 'ngResource']);

/***
 * 
 * 
 */
indexapp.config(function($routeProvider) {
	$routeProvider
	  .when('/dashboard', {
		controller : 'ctrlDashboard',
		templateUrl : './resources/views/protected/dashboard.html'
	}).when('/mailconfirm', {
		controller : 'ctrlemailComfirmed',
		templateUrl : './resources/views/protected/emailComfirmed.html'
	}).when('/paypalForm', {
		controller : 'ctrlpaypalForm',
		templateUrl : './resources/views/protected/paypalForm.html'
	}).otherwise({
		redirectTo : '/dashboard'
	});
});


indexapp.factory('MyService', function() {
	var tripObj = [];
	function setTrip(obj){ tripObj = obj; }
	function getTrip(){ return tripObj; }
	return { setTrip:setTrip, getTrip:getTrip}
});

/**
 * 
 */
indexapp.factory('tripFactory', ['$http', function($http) {

    var urlVehicleSync = './vehicleTypeService';
    var urlTrip = './tripservice';
    
    var dataFactory = {};

    dataFactory.getVehicleSync = function () {
        return $http.get(urlVehicleSync);
    };
    dataFactory.getTrip = function (id) {
        return $http.get(urlBase + '/' + id);
    };
    dataFactory.insertTrip = function (data) {
        return $http.post(urlTrip, data);
    };
    dataFactory.updateTrip = function (id, data) {
        return $http.put(urlBase + '/' + id, data);
    };
    dataFactory.deleteTrip = function (id) {
        return $http.delete(urlBase + '/' + id);
    };
    return dataFactory;
}]);

