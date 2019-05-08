export const reservation = () => {
  const reservationSuccesForm = document.getElementById("reservation-sucess")
  const reservationForm = document.getElementById("new_reservation")
  const reservationModal = document.getElementById("simple-modal")
  const submitButton = reservationForm.querySelector("#reservation-submit")

  reservationForm.addEventListener('submit', (event) => {
    reservationModal.style.display = 'none';
    reservationSuccesForm.style.display = 'flex'
  });
}
