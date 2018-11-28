import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Feeling indecisive...", "Break the loop", "Spin that wheel"],
    typeSpeed: 70,
    loop: true
  });
}

loadDynamicBannerText();

// export { loadDynamicBannerText };
