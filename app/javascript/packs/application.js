// Flatpickr
import '../plugins/flatpickr';

//mapbox Javascript
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

//scroll to bottom javascript
window.onload = function () {
 const chatBox = document.querySelector(".messages-container");
 console.log(chatBox)
 chatBox.scrollTop = chatBox.scrollHeight;
}
