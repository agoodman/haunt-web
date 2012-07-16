// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function showMap(lat,lng) {
	var myOptions = {
		zoom: 10,
		minZoom: 6,
		maxZoom: 16,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById('map'), myOptions);
	map.setCenter(new google.maps.LatLng(lat,lng));
	return map;
}


function showPath(map,lats,lngs,color) {
	var points = [];
	for (var k=0;k<lats.length;k++) {
		points[k] = new google.maps.LatLng(lats[k], lngs[k]);
	}
	var path = new google.maps.Polyline({path: points, strokeColor: color, strokeOpacity: 1.0, strokeWeight: 2});
	path.setMap(map);
}
