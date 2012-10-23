class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    def show
      @videos=Video.find(params[:id])

    end

  end


end
