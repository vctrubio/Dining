export const toggle = () => {
  mapToggle = document.getElementById("map-toggle")
  map = document.getElementById("map")

  mapToggle.addEventListener('change', (event) => {
       if(this.checked) {
        map.style.display = 'none'
    } else {
         map.style.display = 'block'
    }
});
}
