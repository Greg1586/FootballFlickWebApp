require 'spec_helper'


describe "videos" do

  describe "GET/videos" do

    it "should display right title on video page" do
      visit('/videos')
      page.should have_selector("img", :src => 'assets/HeaderLogo.png')
    end

    it "should display video on individual video page" do
      Video.create!(:icon => "icon", :title  => "title", :description => "description")
      visit('/videos/1')
      page.should have_content("description")
      page.should have_content("video")
    end
  end

end

