class VideosController < ApplicationController
  def index

  end
  def show
    @videos = Video.all
  end
end
