import 'bootstrap';
// import './components/message';
// import './components/wheel';
// import './components/geolocation';
import './components/map';
import "../plugins/flatpickr"
// import { loadDynamicBannerText } from './components/typed';
// loadDynamicBannerText();

// ******************** Service worker for PWA ************************************

if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/service-worker.js', { scope: './' })
    .then(function(reg) {
      console.log('[Companion]', 'Service worker registered!');
      console.log(reg);
    });
}
