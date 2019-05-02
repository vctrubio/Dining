export const reservation = () => {
  const reservationSuccesForm = document.getElementById("reservation-sucess")
  const reservationForm = document.getElementById("simple-modal")
  const submitButton = reservationForm.querySelector("#reservation-submit")

  submitButton.addEventListener('click', (event) => {
    reservationForm.style.display = 'none';
    reservationSuccesForm.style.display = 'flex'
  });
}
