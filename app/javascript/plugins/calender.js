import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css'
var moment = require('moment');
moment().format();

export const calender = () => {
  const element = document.getElementById("date-selector")
  const openHour = moment.utc(document.getElementById("reserve-open-hour").dataset.open_hour, "YYYY-MM-DD HH:mm:ss")
  const closeHour = moment.utc(document.getElementById("reserve-close-hour").dataset.close_hour, "YYYY-MM-DD HH:mm:ss")
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
