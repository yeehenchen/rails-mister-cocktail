import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cocktails", "Learn to code"],
    typeSpeed: 50,
    backSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
