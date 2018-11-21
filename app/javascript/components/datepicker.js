import 'flatpickr/dist/flatpickr.css';
import flatpickr from 'flatpickr';

const initDatepicker = function () {
  console.log('hello fro, the dqtepucjker')
  const dateInput = document.getElementById('roofs_date');

  if (dateInput) {
    flatpickr(dateInput, {
      minDate: 'today',
      dateFormat: 'd-m-Y',
    });
  }
};

export { initDatepicker };
