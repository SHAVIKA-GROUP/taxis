    $('.form_datetime').datetimepicker({
        //language:  'fr',
        setDate: new Date(),
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
    
    var source, destination;
    var spnDuration = '', spnDistance = '';
    var directionsDisplay;
    
    google.maps.event.addDomListener(window, 'load', function () {
        new google.maps.places.SearchBox(document.getElementById('source'));
        new google.maps.places.SearchBox(document.getElementById('designation'));
        directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
    });
     
    
    function GetRoute() {
        source = document.getElementById("source").value;
        destination = document.getElementById("designation").value;
		if(source == null || source == '' || destination == null || destination == ''){
			alert('Source / Desgnation should not be empty...');
			return;
		}
      //********* GET DIRECTIONS/MAP, ROUTE AND DISTANCE / DURATION **********************//
        var request = { origin: source, destination: destination, travelMode: google.maps.TravelMode.DRIVING };
        var directionsService = new google.maps.DirectionsService();
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
            	var distance = response.routes[0].legs[0].distance.text;
                var duration = response.routes[0].legs[0].duration.text;
                spnDuration = document.getElementById("spnDuration");
                spnDuration.innerHTML = ""; spnDuration.innerHTML+=  duration;
                spnDistance = document.getElementById("spnDistance");
                spnDistance.innerHTML = ""; spnDistance.innerHTML+=  distance;
            }
        });
    }
    
    function GetMap() {
        source = document.getElementById("source").value;
        destination = document.getElementById("designation").value;
   		if(source == null || source == '' || destination == null || destination == ''){
			alert('Source / Desgnation should not be empty...');
			return;
		}
		//********* Initilazie  MAP **********************//
    	var mumbai = new google.maps.LatLng(18.9750, 72.8258);
        var mapOptions = { zoom: 7, center: mumbai };
        map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);
        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('dvPanel'));
        //********* GET DIRECTIONS/MAP, ROUTE AND DISTANCE / DURATION **********************//
        var request = { origin: source, destination: destination, travelMode: google.maps.TravelMode.DRIVING };
        var directionsService = new google.maps.DirectionsService();
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
            	directionsDisplay.setDirections(response);
                
            	var distance = response.routes[0].legs[0].distance.text;
                var duration = response.routes[0].legs[0].duration.text;
                spnDuration = document.getElementById("spnDuration");
                spnDuration.innerHTML = ""; spnDuration.innerHTML+=  duration;
                spnDistance = document.getElementById("spnDistance");
                spnDistance.innerHTML = ""; spnDistance.innerHTML+=  distance;
            }
        });
   }

    $('#mapmodal').on('shown.bs.modal', function(){
    	GetMap();
    });
    