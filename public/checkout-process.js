$(document).ready(function(){
    $('#buy').click(function(){
        $('#checkout').removeClass("hidden");
        $('#checkout').addClass("checkout");
        $('#overlay').addClass("checkout-background");
        $('#checkoutConfirmation').addClass("display-message");
    });
});