export const toggleFooter = () => {
   const boton = document.getElementById("button");
      boton.addEventListener("click", event => {
        event.target.innerText = ( event.target.innerText === "Close") ? "Footer" : "Close";
      document.querySelector(".footer").classList.toggle("footer-active");
  });
}
