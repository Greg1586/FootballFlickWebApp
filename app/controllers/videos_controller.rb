class VideosController < ApplicationController
include HTTParty
  def index
    @videos = Video.find(:all)
  end

  def show
    widget_id = params[:id]
    logger.info("="*100)
    logger.info(widget_id)
    logger.info("="*100)
    response = HTTParty.get('http://api.liveclicker.com/service/api?method=liveclicker.widget.getInfo&account_id=1584&format=json&widget_id='+widget_id)
    widgetinfo = JSON(response)

    widgetinfojson = JSON.parse(widgetinfo)
    widget = widgetinfojson["widget"]
    @description = widget["metadescription"]
  end

end
