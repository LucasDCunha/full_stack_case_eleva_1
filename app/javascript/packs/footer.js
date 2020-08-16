import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Faça parte do time que está mudando a educação no Brasil"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
