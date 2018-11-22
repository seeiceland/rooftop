const initPeriodButtons = function() {
  const periodInput = document.getElementById('booking_period');

  if (periodInput) {
    const dayBtn = document.getElementById('day-button');
    const nightBtn = document.getElementById('night-button');

    dayBtn.addEventListener('click', () => periodInput.value = 'day');
    nightBtn.addEventListener('click', () => periodInput.value = 'night');
  }
}

export { initPeriodButtons };
