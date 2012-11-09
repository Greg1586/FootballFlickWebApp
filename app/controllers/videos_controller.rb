class VideosController < ApplicationController

  def index
    @videos = Video.find(:all)
  end

  def show
    #lc_id = params[:id];

  #@videos=Video.find(params[:id])

  end

end
