class HomepagesController < ApplicationController
  def index
    @videos = Video.all
  end

  

end
