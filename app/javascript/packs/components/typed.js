import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Spin that wheel", "Feeling indecisive...", "Break the loop"],
    typeSpeed: 70,
    loop: true
  });
}

loadDynamicBannerText();

// export { loadDynamicBannerText };
