/***
 * 
 * 
 */
indexapp.controller('ctrlDashboard', function($scope, $location, $http) {
	console.log("=================> calling ctrlDashboard ...");
});


/***
 * 
 * 
 */
indexapp.controller('appCtrl', ['$scope', '$location', '$filter', '$http', '$filter', 'tripFactory', 'MyService', function($scope, $location, $filter, $http, $filter, tripFactory, MyService) {
	console.log('---> Called appCtrl');
	$scope.trip = {};
	var imagepath = './resources/assets/images/vehicles-fleet/CarImges/';
	var vehicleTypeId = 0; 
	$scope.isDisabledE = false;
	$scope.isDisabledP = false;
	
	//$('#mydiv1').hide();
	/**************************************/
	$scope.getImagePath = function(img){
		return imagepath + img;
	};
	
	/**************************************/
	$scope.getVehicleType = function(id){
		vehicleTypeId = id;
	};

	/***************** GET *********************/
	getVehicleSyncData();
	function getVehicleSyncData() {
		tripFactory.getVehicleSync()
		.then(function(response){
				console.log('================= success data got=>'+response.data);
				$scope.vehiclesList = response.data;
			},
			function(error){
				console.log('================= error occer.');	
			}
		);
	};	
	
	/**************************************/
	$scope.ebooking_submit = function() {
		$scope.isDisabledE = true;
		$('#mymodal-content').append('');
		MyService.setTrip('');
		if(vehicleTypeId == undefined || vehicleTypeId === 0){
		    $('#myModal').on('show', function () { });
		    $('#myModal').modal('show');
		    $('#mymodal-content').append('Vehicle Type is not selected.');
		    $scope.isDisabledE = false;
		    return;
		}
		$scope.trip.passanger.vehicle_id = $scope.trip.travelDetail.vehicle_id = vehicleTypeId;
		if(validateForm1($('#tripForm')) && validateForm($('#bookingForm'))){
			getMapDurationDistance();
		    
		    MyService.setTrip($scope.trip);
			window.setTimeout(function() {
				//$('#mydiv1').show();
				tripFactory.insertTrip($scope.trip)
				.then(function(response){
						console.log('================= success data got=>'+response.data);
						$scope.isDisabledE = false;
						$location.url('/mailconfirm');
					},function(error){
						console.log('================= error occer.');	
						$scope.isDisabledE = false;
						$location.url('/mailconfirm');
					}
				);
			}, 1000);
			return;
		}else{
		    $('#myModal').on('show', function () { });
		    $('#myModal').modal('show');
		    $('#mymodal-content').append('Some of the fields are not filled. Fill it up please.');
		}
		
	};
	
	/**************************************/
	$scope.pbooking_submit = function() {
		$scope.isDisabledP = true;
		$('#mymodal-content').append('');
		MyService.setTrip('');
		if(vehicleTypeId == undefined || vehicleTypeId === 0){
		    $('#myModal').on('show', function () { });
		    $('#myModal').modal('show');
		    $('#mymodal-content').append('Vehicle Type is not selected.');
		    $scope.isDisabledP = false;
		    return;
		}
		$scope.trip.passanger.vehicle_id = $scope.trip.travelDetail.vehicle_id = vehicleTypeId;
		if(validateForm1($('#tripForm')) && validateForm($('#bookingForm'))){
			getMapDurationDistance();
			MyService.setTrip($scope.trip);
			$location.url('/paypalForm');
			$scope.isDisabledP = false;
			return;
		}else{
		    $('#myModal').on('show', function () { });
		    $('#myModal').modal('show');
		    $('#mymodal-content').append('Some of the fields are not filled. Fill it up please.');
		    $scope.isDisabledP = false;
		}
	};
	
	/****************************************/
	function getMapDurationDistance() {
		$scope.trip.travelDetail.source = document.getElementById("source").value;
		$scope.trip.travelDetail.designation = document.getElementById("designation").value;
		$scope.trip.travelDetail.travel_datetime = setDateMillisecond($filter, document.getElementById("dtp_input1").value);
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

