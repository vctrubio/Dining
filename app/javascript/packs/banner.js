import Typed from 'typed.js';

const loadDynamicBannerText = () => {

    var options = {
      strings: ["Welcome to Dining", "Host your own restaurant", "Or find somewhere to eat."],
      typeSpeed: 50,
      loop: true
    }
    
    var typed = new Typed("#typed-strings", options);
}
export { loadDynamicBannerText };