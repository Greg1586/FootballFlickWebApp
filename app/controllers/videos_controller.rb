class VideosController < ApplicationController

  def index
    @videos = Video.find(:all)
  end

  def show

  end

end
