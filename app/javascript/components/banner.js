import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cocktails", "Drink as much as you can"],
    typeSpeed: 50,
    backSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
