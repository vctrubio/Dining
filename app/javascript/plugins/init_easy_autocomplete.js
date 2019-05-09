import EasyAutocomplete from './jquery.easy-autocomplete';
import $ from 'jquery';

export const initEasyAutocomplete = () => {
  const search = document.getElementById("query")
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
      onClickEvent: function() {
        console.log(search)
      } ,
    }
  };


  $("#query").easyAutocomplete(options);


};

