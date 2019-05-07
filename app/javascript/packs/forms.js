export const forms = () => {

  const form = document.getElementById("new_reservation")
  const nameField = form.querySelector("#reservation_name")
  const guestNumberField = form.querySelector("#reservation_guests")
  const dateField = form.querySelector("#datepicker")
  const submit = form.querySelector("#reservation-submit")


  submit.addEventListener('click', (event) => {
    if (nameField.value === "") {
      event.preventDefault();
      nameField.placeholder = "please input a name"
    }

    if ( guestNumberField.value === ""  ) {
      event.preventDefault();
      guestNumberField.value = ""
      guestNumberField.placeholder = "please input a number "
    }

  });


}
