import jQuery from 'jquery';
import $ from 'jquery';
import Slick from "slick-carousel/slick/slick"
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'

export const restaurantCarousel = () => {
$('.restaurant-carousel ').slick({
  dots: true,
  infinite: false,
  speed: 300,
  slidesToShow: 7,
  slidesToScroll: 7,
  rows: 2,
  responsive: [
    {
      breakpoint: 493,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 4,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
});
}
