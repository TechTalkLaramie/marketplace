$(document).on('turbolinks:load', function() { 

    bindEventListeners();
    cssAdjustments();
    
    /* 
     * binds event listeners
     */
    function bindEventListeners() {
        $('.hamburger').on('click', openSidebar);
        
        $('.close').on('click', closeSidebar);

        $('input.input-floating-label').on('focus', floatLabel);

        $('#post-input-fixed').on('focus', function(){
            $('#post-input-hour').value('');
        });

        $('#post-input-hour').on('focus', function(){
            $('#post-input-fixed').value('');
        });
   }
    
    /* 
     * initial css adjustments
     */
    function cssAdjustments(){
        $('select').after('<span class = "arrow">&#x25BC;</span>')
    }

    /* 
     * slides sidebar in from left
     */
    function openSidebar() {
        $('.banner#banner-sidebar').animate({
            left: 0
        });
    }
    
    /* 
     * slides sidebar out to left
     */
    function closeSidebar() {
        $('.banner#banner-sidebar').animate({
            left: '-30%'
        });
    }

    /* 
     * animates input's label
     */
    function floatLabel(e) {
        var input = e.target
        $(input).prev('.floating-label').animate({
            top: '5px',
            opacity: '1',
            fontSize: '.8em',
            fontWeight: '700'
        }, 100);
    }


});


