import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Faça parte do time que está mudando a educação no Brasil"],
    typeSpeed: 40,
    loop: true,
    backDelay: 3000,
  });
}

export { loadDynamicBannerText };
