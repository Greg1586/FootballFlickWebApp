if(document.getElementById("description-box")){
lc.settings = { 'account_id':1584 };
var path = window.location.pathname;
path = path.substring(8);

$(document).ready(function () {
    player();
});

function player() {
    lc({'widget_id':path}).isReady(function () {
        x = document.getElementById("videos-page");
        width = (x.offsetWidth * 0.95);
        height = (width * 0.57);
        lc(this).getByIndex(0).getPlayer({'player_id':1285, 'width':width, 'height':height}).appendPlayerTo({'id':'show-videos'});
    });
}
}