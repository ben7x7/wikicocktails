import $ from 'jquery';
import 'select2';

const initselect2 = () => {
  $(document).ready(function() {
    $('.select2').select2();
  });
}

export { initselect2 };

