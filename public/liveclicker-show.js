lc.settings = { 'account_id':1584 };

if(document.getElementById("description-box")){

    var path = window.location.pathname;
    path = path.substring(8);

    $(document).ready(function () {
        playerStart();
    });

    function playerStart() {
        lc({'widget_id':path}).isReady(function () {
            x = document.getElementById("videos-page");
            width = (x.offsetWidth * 0.95);
            height = (width * 0.57);
            lc(this).getByIndex(0).getPlayer({'player_id':1285, 'width':width, 'height':height}).appendPlayerTo({'id':'show-videos'});
        });
    }
}

if(document.getElementById("video-of-week")){
    $(document).ready(function () {
        player();
    });
    function player() {
        lc({'tag':'VideoOfTheWeek'}).isReady(function () {
            x = document.getElementById("video-of-week");
            width = (x.offsetWidth * 0.90);
            height = (width * 0.57);
            lc(this).getByIndex(0).getPlayer({'player_id':1285, 'width':width, 'height':height}).appendPlayerTo({'id':'VideoOfTheWeek'});
        });
    }
}
