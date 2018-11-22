import 'flatpickr/dist/flatpickr.css';
import flatpickr from 'flatpickr';

const initDatepicker = function () {
  const dateInput = document.getElementById('roofs_date');
  // const bookingDateInput = document.getElementById('booking_period');

  if (dateInput) {
    flatpickr(dateInput, {
      minDate: 'today',
      dateFormat: 'd-m-Y',
    });
  }

//   if (bookingDateInput) {
//     flatpickr(bookingDateInput, {
//       minDate: 'today',
//       dateFormat: 'd-m-Y',
//      });
//   }
};

export { initDatepicker };
