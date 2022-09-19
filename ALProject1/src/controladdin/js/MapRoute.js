function InitMap() {
    const newScript = document.createElement("script");
    newScript.async = true;
    newScript.defer = true;
    newScript.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyBnX2JgkBqA932gfoD7yUBU60856vHRyag&callback=initMap";
    document.head.appendChild(newScript);
    
    var Kyiv = new google.maps.LatLng(50.450001,30.523333);
    var mapOptions = {
        zoom:7,
        center: Kyiv
    }
    google.maps.Map(document.getElementById("controlAddIn"), mapOptions);
}

function CreateRoute(LongitudeFrom, LatitudeFrom, LongitudeTo, LatitudeTo) {
    var directionsService = new google.maps.DirectionsService();
    var directionsRenderer = new google.maps.DirectionsRenderer();
    var Kyiv = new google.maps.LatLng(50.450001,30.523333);
    var mapOptions = {
        zoom:7,
        center: Kyiv
    }
    var map = new google.maps.Map(document.getElementById("controlAddIn"), mapOptions);
    directionsRenderer.setMap(map);
    
    var start = new google.maps.LatLng(LatitudeFrom,LongitudeFrom);
    var end = new google.maps.LatLng(LatitudeTo, LongitudeTo);
    var request = {
        origin: start,
        destination: end,
        travelMode: 'DRIVING'
    };
    directionsService.route(request, function(result, status) {
        if (status == 'OK') {
        directionsRenderer.setDirections(result);
        }
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('Result',[status]);
    });
}

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ControlAddInReady');