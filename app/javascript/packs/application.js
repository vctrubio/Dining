/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { toggleFooter } from "./footer";
//import { loadDynamicBannerText } from './banner';
import { initMapbox } from './mapbox';
import {openModal} from './modal';
import {closeModal} from './modal';
import {initAutocomplete} from '../plugins/init_autocomplete';
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css'




initMapbox();
toggleFooter();
initAutocomplete();
const element = document.getElementById("date-selector")
flatpickr("#datepicker");
flatpickr("#timepicker",{
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    minDate: "16:00",
    maxDate: "22:30",
})

flatpickr(".timepicker",{
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
})
//loadDynamicBannerText();

