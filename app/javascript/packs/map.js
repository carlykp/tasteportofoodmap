import GMaps from 'gmaps/gmaps.js';

var myStyles =[
    {
        featureType: "poi",
        elementType: "labels",
        stylers: [
              { visibility: "off" }
        ]
    }
];


const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.removeMarkers();
  map.addMarkers(markers);
  map.addStyle({
            styledMapName:"Styled Map",
            styles: myStyles,
            mapTypeId: "map_style"  
        });
  map.setStyle("map_style");
  if (markers.length === 0) {
    map.setCenter(41.149835, -8.610731);
    map.setZoom(13);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(15);
  } else {
    map.fitLatLngBounds(markers);
  }
}


