export const autoComplete = () => {
  const inputText = document.getElementById('query');
  const results = document.getElementById('api-results')
  if (inputText) {
    fetch(`/api/v1/events?query=${inputText.value}`)
    .then(response => response.json())
    .then((data) => {
      results.innerHTML = "";
      console.log(data);
      data.forEach((restaurant, index) => {
        const suggestedResultLi = `<a href="/restaurant?utf8=✓&query=${restaurant.name}"><li class="list-group-item" id='list-group-item-${index}'><p>${restaurant.name}</p></li></a>`;
        results.insertAdjacentHTML("beforeend", suggestedResultLi);
      });
    });

  }

}
