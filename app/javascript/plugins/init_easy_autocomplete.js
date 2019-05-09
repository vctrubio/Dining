import EasyAutocomplete from './jquery.easy-autocomplete';
import $ from 'jquery';

export const initEasyAutocomplete = () => {
 var options = {
  data: ["blue", "green", "pink", "red", "yellow"]
};

$("#query").easyAutocomplete(options);

};

