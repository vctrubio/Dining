import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css'
var moment = require('moment');
moment().format();

export const calender = () => {
  const reserveForm = document.getElementById("simple-modal")
  if ( null != reserveForm ) {
    const element = reserveForm.querySelector("#date-selector")
    const openHour = moment.utc(reserveForm.querySelector("#reserve-open-hour").dataset.open_hour, "YYYY-MM-DD HH:mm:ss")
    const closeHour = moment.utc(reserveForm.querySelector("#reserve-close-hour").dataset.close_hour, "YYYY-MM-DD HH:mm:ss")

    flatpickr("#datepicker");
    flatpickr("#timepicker",{
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
      minDate: `${moment(openHour).format("HH:mm")}`,
      maxDate: `${moment(closeHour).format("HH:mm")}`,
    })

    flatpickr(".timepicker",{
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
    })
  }

  const newRestaurantForm = document.getElementById("new_restaurant")
  if (null != newRestaurantForm) {
      flatpickr("#restaurant_open_hour",{
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
    })

      flatpickr("#restaurant_close_hour",{
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
    })
  }

  const editRestaurantForm = document.getElementById("edit_restaurant")
  if (null != editRestaurantForm) {
      flatpickr("#restaurant_open_hour",{
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
    })

      flatpickr("#restaurant_close_hour",{
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
    })
  }


}
