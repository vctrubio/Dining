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
      onClickEvent: function() {
        const id = $("#query").getSelectedItemData().id
        const url = `/restaurants/${id}`
        Turbolinks.visit(url)
      } ,
    }
  };


  $("#query").easyAutocomplete(options);


};

