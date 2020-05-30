import Typed from 'typed.js';

const loadDynamicNavbarText = () => {
  new Typed('#navbar-typed-text', {
    strings: ["You wanted...", "We did it!!"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicNavbarText };