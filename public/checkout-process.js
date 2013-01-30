$(document).ready(function(){
    $('#buy').click(function(){
        $('#checkout').removeClass("hidden");
        $('#checkout').addClass("checkout");
        $('#overlay').addClass("checkout-background");
        $('#checkoutConfirmation').addClass("display-message");
        $("input[name='submit']").attr('disabled','disabled');
    });

    $('#overlay').click(function(){
        $(this).removeClass("checkout-background")
        $('#checkout').addClass("hidden");
        $('li').removeClass('ui-selected');
    });

    $('li').click(function(){
        if ($('li').hasClass('ui-selected')){
            $('li').removeClass('ui-selected');
        }
        $(this).addClass('ui-selected');
    });

    $('#checkoutCheckbox').click(function(){
        if($('li').hasClass('ui-selected')){
            $("input[name='submit']").removeAttr('disabled');
        }
    });

});