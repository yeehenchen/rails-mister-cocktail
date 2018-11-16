import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cocktails", "Benjamin and Kitty's work"],
    typeSpeed: 50,
    backSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
