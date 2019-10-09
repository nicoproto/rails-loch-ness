require("flatpickr/dist/themes/material_green.css");

flatpickr("#datepicker", {
  mode: 'range',
  minDate: "today",
  dateFormat: "Y-m-d"
});
