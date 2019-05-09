import EasyAutocomplete from './jquery.easy-autocomplete';
import $ from 'jquery';

export const initEasyAutocomplete = () => {
  var options = {
    data: gon.restaurant_results,

    getValue: "name",


  template: {
    type: "description",
    fields: {
      description: "location"
      }
    },

    list: {
      match: {
        enabled: true
      },
      sort: {
        enabled: true
      },
      maxNumberOfElements: 5,
    }
  };


  $("#query").easyAutocomplete(options);
  console.log(gon.restaurant_results)

};

