class VideosController < ApplicationController
  def index
    @videos = Video.find(:all)
  end

  def show
    @videos=Video.find(params[:id])

  end

end
