const initPeriodButtons = function() {
  const periodInputs = document.querySelectorAll('.time-button');

  periodInputs.forEach((element) =>{
    element.addEventListener("click",()=>{
      periodInputs.forEach(element => element.classList.remove('on_this'));
      element.classList.add("on_this")
    })
  })
}

export { initPeriodButtons };
