require("flatpickr/dist/themes/material_green.css");

const milisecs_to_days = (24*60*60*1000);

flatpickr("#datepicker", {
  mode: 'range',
  minDate: "today",
  dateFormat: "Y-m-d",
  onClose: function(selectedDates, dateStr, instance) {
      const booking_time = (selectedDates[1] - selectedDates[0]) / milisecs_to_days + 1;
      const total_price = document.getElementById("total-price");
      const item_price = document.getElementById("item-price");

      total_price.innerText = Math.round(booking_time * item_price.innerText);
    }
});

flatpickr("datesearch", {
  mode: 'range',
  minDate: 'today',
  dateFormat: "Y-m-d"
});
