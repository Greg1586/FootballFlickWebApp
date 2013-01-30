if (document.getElementById("video")) {
    lc.settings = { 'account_id':1584 };

    $(document).ready(function () {
        lc({'dim1':'Football'}).isReady(function () {
            var listLength = lc(this).length;
            var listOfWidgets = lc(this);
            var videoDiv = document.getElementById('video');
            for (var i = 0; i < listLength; i++) {
                try {
                    var videoListDiv = document.createElement("div");
                    videoListDiv.className = "columns three";
                    videoListDiv.id = "video-list" + i;

                    var thumbnailDiv = document.createElement("div");
                    thumbnailDiv.className = "video-list-box";

                    var imageDiv = document.createElement("div");
                    imageDiv.className = "image-container";

                    var descriptionOverlay = document.createElement("p");
                    descriptionOverlay.className = "description";
                    descriptionOverlay.textContent = lc(this).getByIndex(i).title;

                    thumbnailDiv.appendChild(imageDiv);
                    videoListDiv.appendChild(thumbnailDiv);
                    videoDiv.appendChild(videoListDiv);

                    lc(this).getByIndex(i).getThumbnail({'width':260, 'height':120})
                        .appendTo(imageDiv)
                        .click(function () {
                            window.location = 'videos/' + $(this).attr("widget_id");
                        });

                    imageDiv.appendChild(descriptionOverlay);
                } catch (e) {

                }
            }
        });
    });
}

$(document).ready(function(){
    $('#buy').click(function(){
//        var checkout = document.createElement('div');
//        checkout.className = "checkout";
//        document.body.appendChild(checkout);
        $('#checkout').removeClass("hidden");
        $('#checkout').addClass("checkout");
        $('#overlay').addClass("checkout-background");
        $('#checkoutConfirmation').addClass("display-message");
    });
});

