import $ from 'jquery';
import "jquery-bar-rating";
import "jquery-bar-rating/dist/themes/css-stars.css";


export const initStarRating = () => {
    $('#reservation_rating').barrating({
    theme: 'css-stars'
  });

};

