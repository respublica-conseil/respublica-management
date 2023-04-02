
//= require jquery
import "@hotwired/turbo-rails"
import "controllers"


$(document).ready(function () {
    // Display the notice
    $('.alert').fadeIn('slow');
    console.log("toto");
    // Hide the notice after 4 seconds
    setTimeout(function () {
        console.log("XXX");
        $('.alert').fadeOut('slow');
    }, 4000);
});

$(document).on('click', 'a[data-confirm], button[data-confirm]', function () {
    var message = $(this).data('confirm');
    return confirm(message);
});




