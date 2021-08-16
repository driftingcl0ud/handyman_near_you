import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

  const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    fitMapToMarkers(map, markers);
      markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
      new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    });
  }
};



const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ 57.6755, -20.20665]);
  map.fitBounds(bounds, { maxZoom: 9});
};

export { initMapbox };