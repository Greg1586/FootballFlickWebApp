require 'spec_helper'


describe "videos" do

  describe "GET/videos" do

    it "should display right title on video page" do
      visit('/videos')
      page.should have_content("Football Flick")
    end

    it "should display video that have been already selected in show page" do
      Video.create!(:icon => "icon", :title  => "title", :description => "description")
      visit('/videos/1')
      page.should have_content("description")
      page.should have_content("mediaplayer")
    end
  end

end

