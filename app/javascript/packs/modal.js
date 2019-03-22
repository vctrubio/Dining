const modal = document.getElementById('simple-modal')
const modalButton = document.getElementById('modal-trigger')
const modalClose = document.getElementById('close')

if ( modalButton != null) {
const openModal = () => modal.style.display = 'block';

modalButton.addEventListener('click', openModal);


const closeModal = () => modal.style.display = 'none';

modalClose.addEventListener('click', closeModal);



const outsideClick = (e) => {
  if (e.target == modal) {
    modal.style.display = 'none';
  }
};

window.addEventListener('click', outsideClick);
};
