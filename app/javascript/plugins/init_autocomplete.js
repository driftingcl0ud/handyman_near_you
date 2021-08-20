import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('handyman_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/kaveesh/cksjzlzfy9juw18ntjltxsqxy' // <-- use your own!
});
export { initAutocomplete };