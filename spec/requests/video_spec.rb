require 'spec_helper'


describe "videos" do

  describe "GET/videos" do

    it "should display right title on video page" do
      visit('/videos')
      page.should have_selector("img", :src => 'assets/HeaderLogo.png')
    end
    it "should display liveclicker video tag" do
      visit('/videos')
     page.should have_selector("div", :id => 'video-list0')
    end

  end

end

