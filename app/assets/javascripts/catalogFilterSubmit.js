// If users press the "enter" button on the catalog form, it breaks.

$(document).ready(set_up);

function set_up() {
    $("form#catalog-filter input").keypress(
        function (e) {
            if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
            // if 'enter' was the key the user pressed
                $('form#catalog-filter input[type=submit]').click();
                return false;
            } else {
                return true;
            }
        }
    );
} // set_up() OUT