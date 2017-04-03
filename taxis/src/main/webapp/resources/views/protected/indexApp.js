var indexapp = angular.module('indexApp', []);


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

/***
 * 
 * 
 */
indexapp.controller('appCtrl', ['$scope', '$location', '$filter', '$http', '$filter', 'tripFactory', function($scope, $location, $filter, $http, $filter, tripFactory) {
	console.log('---> Called appCtrl');
	$scope.trip = {};
	var vehicles_list = {};
	var imagepath = './resources/assets/images/vehicles-fleet/CarImges/';
	var vehicleTypeId = 0; 
	
	/**************************************/
	$scope.getImagePath = function(img){
		return imagepath + img;
	};
	
	/**************************************/
	$scope.getImageId = function(imgid, type){
		updateVehicleDetail(imgid, type);
	};
	function updateVehicleDetail(imgid, type){
		//console.log("=================imgid="+imgid+"/type="+type);
		var obj = '';
		vehicleTypeId = imgid;
		angular.forEach(vehicles_list, function(value, key) {
			  if(value.id === imgid){
				  obj = value;
			  }
		});
		
		if(type === 1){
			//console.log("value=="+obj.vehicle_no+"/key=="+obj.pasanger_capacity+"/"+obj.luggage_capacity);
			$scope.vehicle_no_1 = obj.vehicle_no; $scope.pasanger_capacity_1 = obj.pasanger_capacity; $scope.luggage_capacity_1 = obj.luggage_capacity;
			$scope.regular_fare_1 = '$'+obj.regular_fare+' / Km (Day Travel)'; $scope.driver_name_1 = obj.driver_name; $scope.contact_no_1 = obj.contact_no;
			$scope.availability_1 = obj.availability; $scope.vehicle_name_1 = obj.vehicle_name;
		}else if(type === 2){
			$scope.vehicle_no_2 = obj.vehicle_no; $scope.pasanger_capacity_2 = obj.pasanger_capacity; $scope.luggage_capacity_2 = obj.luggage_capacity;
			$scope.regular_fare_2 = '$'+obj.regular_fare+' / Km (Day Travel)'; $scope.driver_name_2 = obj.driver_name; $scope.contact_no_2 = obj.contact_no;
			$scope.availability_2 = obj.availability; $scope.vehicle_name_2 = obj.vehicle_name;
		}else if(type === 3){
			$scope.vehicle_no_3 = obj.vehicle_no; $scope.pasanger_capacity_3 = obj.pasanger_capacity; $scope.luggage_capacity_3 = obj.luggage_capacity;
			$scope.regular_fare_3 = '$'+obj.regular_fare+' / Km (Day Travel)'; $scope.driver_name_3 = obj.driver_name; $scope.contact_no_3 = obj.contact_no;
			$scope.availability_3 = obj.availability; $scope.vehicle_name_3 = obj.vehicle_name;
		}
		return;
	};
	
	/**************************************/
	$scope.tabchange = function(tabtype){
		angular.forEach(vehicles_list, function(value, key){
			if(value.type === tabtype){
				updateVehicleDetail(value.id, tabtype);
				return;
			}
		});
	};

	/**************************************/
	getVehicleSyncData();
	function getVehicleSyncData() {
		tripFactory.getVehicleSync()
		.then(function(response){
				console.log('================= success data got=>'+response.data);
				vehicles_list = response.data;
				updateVehicleDetail(1, 1);
				$scope.vehiclesList = response.data;
			},
			function(error){
				console.log('================= error occer.');	
			}
		);
	};	
	
	/**************************************/
	$scope.ebooking_submit = function() {
		console.log('======= called......');
		if(validateForm1($('#tripForm')) && validateForm($('#bookingForm'))){
			/*********************** SrcDesc*****************************/
			$scope.trip.travelDetail.source = document.getElementById("source").value;
			$scope.trip.travelDetail.designation = document.getElementById("designation").value;
			$scope.trip.travelDetail.travel_datetime = setDateMillisecond($filter, document.getElementById("dtp_input1").value);
			//console.log('Source=>'+$scope.trip.travelDetail.source+'/designation=>'+$scope.trip.travelDetail.designation);
			//console.log($scope.trip.travelDetail.travel_datetime+'/'+$scope.trip.travelDetail.no_passanger+'/'+$scope.trip.travelDetail.no_luggage);
				//********* GET DIRECTIONS/MAP, ROUTE AND DISTANCE / DURATION **********************//
			    var request = { origin: $scope.trip.travelDetail.source, destination: $scope.trip.travelDetail.designation, travelMode: google.maps.TravelMode.DRIVING };
			    var directionsService = new google.maps.DirectionsService();
			    directionsService.route(request, function (response, status) {
			        if (status == google.maps.DirectionsStatus.OK) {
			        	var distance = response.routes[0].legs[0].distance.value; // in terms of meters
			            var duration = response.routes[0].legs[0].duration.value; // in terms of seconds
			            $scope.trip.travelDetail.travel_duration = duration;
			            $scope.trip.travelDetail.travel_distance = distance;
			            console.log('['+new Date()+']distance=>'+$scope.trip.travelDetail.travel_distance+'/duration=>'+$scope.trip.travelDetail.travel_duration);
			        }
			    });
			/*********************** Booking details *****************************/
		    $scope.trip.passanger.vehicle_id = vehicleTypeId;
		    //console.log($scope.trip.passanger.first_name+'/'+$scope.trip.passanger.last_name+'/'+$scope.trip.passanger.gender+'/'+$scope.trip.passanger.phone_id);
		    //console.log($scope.trip.passanger.email+'/'+$scope.trip.passanger.address_one+'/'+$scope.trip.passanger.address_two+'/'+$scope.trip.passanger.zip_name);
		    //console.log($scope.trip.passanger.city+'/'+$scope.trip.passanger.state+'/'+$scope.trip.passanger.vehicle_id);
		    /*********************** INSERT *****************************/
		    console.log('================= started...');
			window.setTimeout(function() {
				tripFactory.insertTrip($scope.trip)
				.then(function(response){
						console.log('================= success data got=>'+response.data);
					},function(error){
						console.log('================= error occer.');	
					}
				);
			}, 5000);
			return;
		}else{
		    //alert("Please fill in all the fields!!");
		    $('#myModal').on('show', function () { });
		    $('#myModal').modal('show');
		   // $('#mymodal-content').text('Some of fields are not filed so enter it...');
		}
		
	};
	
}]);

validateForm1 = function(form){
	resetFormOptions(form);
	var error = false;
	  $.each($('input', form),function(i, field){
		 console.log('===['+i+'] '+$(field).attr('id')+'/'+$(field).val());   
		    if(!$(field).val()){
		        error = true;
		        var div = $(field).closest('.form-group');
		        div.addClass('has-error');
		        $('.help-block', div).text($('label[for="'+$(field).attr('id')+'"]').text().replace('*','')+' cannot be empty');
		        $(window).scrollTop($(field).offset().top);
		    }
	 });
	  return !error;
}

validateForm = function(form){
	resetFormOptions(form);
	var error = false;
	  $.each($('input, textarea', form),function(i, field){
		 console.log('===['+i+'] '+$(field).attr('id')+'/'+$(field).val());   
		    if(!$(field).val()){
		        error = true;
		        var div = $(field).closest('.form-group');
		        div.addClass('has-error');
		        $('.help-block', div).text($('label[for="'+$(field).attr('id')+'"]').text().replace('*','')+' cannot be empty');
		        //$(window).scrollTop($(field).offset().top);
		    }
	 });
	  
	  if(!error){
		  $.each($('input, textarea', form),function(i, field){
		    if(($(field).attr('id') === 'first_name' || $(field).attr('id') === 'last_name' || $(field).attr('id') === 'city' || $(field).attr('id') === 'state') 
		    		&& validatelength($(field).val())){ 
		        error = true;
		        var div = $(field).closest('.form-group');
		        div.addClass('has-error');
		        $('.help-block', div).text('Value should with in 50 charecters.');
		    }
		    if($(field).attr('id') === 'phone_id' && !validatePhone($(field).val())){ 
		        error = true;
		        var div = $(field).closest('.form-group');
		        div.addClass('has-error');
		        $('.help-block', div).text('Enter valid '+$('label[for="'+$(field).attr('id')+'"]').text().replace('*','')+'...');
		    }
		    if($(field).attr('id') === 'email' && !validateEmail($(field).val())){ 
		        error = true;
		        var div = $(field).closest('.form-group');
		        div.addClass('has-error');
		        $('.help-block', div).text('Enter valid '+$('label[for="'+$(field).attr('id')+'"]').text().replace('*','')+'...');
		    }
		    if($(field).attr('id') === 'gender' && !validateGender($(field).val())){ 
		        error = true;
		        var div = $(field).closest('.form-group');
		        div.addClass('has-error');
		        $('.help-block', div).text('Gender should be "M" / "F"');
		    }
		    if($(field).attr('id') === 'zip_name' && !validateZip($(field).val())){ 
		        error = true;
		        var div = $(field).closest('.form-group');
		        div.addClass('has-error');
		        $('.help-block', div).text('Enter valid 6 digit '+$('label[for="'+$(field).attr('id')+'"]').text().replace('*','')+'.');
		    }
		  });    
     }
 return !error;
}

resetFormOptions = function(form){
	  $('.has-error', form).removeClass('has-error');
	  $('.help-block', form).text('');
};


$('input, textarea').on('input change',function(){
    resetDivError($(this).closest('.form-group'));
});

resetDivError = function(div){
	  div.removeClass('has-error');
	  $('.help-block', div).text('');
};


function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return (email.match(re)) ? true : false;
}


function validatePhone(phone) {
    var re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;   
    return (phone.match(re)) ? true : false; 
}


function validateGender(gender) {
    return (gender === 'M' || gender === 'F') ? true : false; 
}

function validateZip(zip) {
    var re = /^\d{6}$/;   
    return (zip.match(re)) ? true : false; 
}

function validatelength(value) {
	return (value.length > 50) ? true : false;
}

function setDateMillisecond($filter, date) {
	if(null === date || date === ''){
		return new Date().getTime();
	}
	console.log('CONVERTOR ==>'+date);
	return new Date(date).getTime();
}


