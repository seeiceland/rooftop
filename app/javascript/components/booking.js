const initPeriodButtons = function() {
  const periodInputs = document.querySelectorAll('.time-button');

  periodInputs.forEach((element) =>{
    element.addEventListener("click",()=>{
      periodInputs.forEach(element => element.classList.remove('on_this'));
      element.classList.add("on_this")
    })
  })

  if (periodInputs) {
    const dayBtn = document.getElementById('day');
    const nightBtn = document.getElementById('night');
    const elem = document.getElementById('booking_period');
    dayBtn.addEventListener('click', () => elem.value = 'day');
    nightBtn.addEventListener('click', () => elem.value = 'night');
  }
}

export { initPeriodButtons };

// const initPeriodButtons = function() {
//   const periodInput = document.getElementById('booking_period');

//   if (periodInput) {
//     const dayBtn = document.getElementById('day-button');
//     const nightBtn = document.getElementById('night-button');

//     dayBtn.addEventListener('click', () => periodInput.value = 'day');
//     nightBtn.addEventListener('click', () => periodInput.value = 'night');
//   }
// }
