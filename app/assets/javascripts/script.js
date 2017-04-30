$(document).on('turbolinks:load', function() { 

    bindEventListeners();
    cssAdjustments();
    
    /* 
     * binds event listeners
     */
    function bindEventListeners() {
        $('.hamburger').on('click', openSidebar);
        
        $('.close').on('click', closeSidebar);
        
        $('.review-star').on('click', reviewStars);

        $('.input-floating-label').on('focus', floatLabel);

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
        $('select').after('<span class = "arrow">&#x25BC;</span>');
        
        $('.input-floating-label').each(function(){
            if ($(this).val()) {
                $(this).addClass('focus-input');
                $(this).prev('.floating-label').addClass('static-floating-label')
            }
        });
    }

    /* 
     * slides sidebar in from left
     */
    function openSidebar() {
        $('.banner#banner-sidebar').animate({
            right: 0
        });
    }
    
    /* 
     * slides sidebar out to left
     */
    function closeSidebar() {
        $('.banner#banner-sidebar').animate({
            right: '-30%'
        });
    }
    
    /* 
     * slides sidebar out to left
     */
    function reviewStars(e) {
        var star = e.target;
        $('.review-star').removeClass('fa-star').addClass('fa-star-o');
        $(star).prevUntil($('.review-star:first-child')).andSelf().prev('.review-star:first-child').andSelf().removeClass('fa-star-o').addClass('fa-star');
        var reviewValue = $(star).index() + 1;
        $('#review_rating').val(reviewValue);
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
        
        $(input).addClass('focus-input');
    }

});


