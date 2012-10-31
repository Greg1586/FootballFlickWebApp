require 'spec_helper'


describe "videos" do

  describe "GET/videos" do

    it "should display videos that have been already selected" do
      visit('/videos')
      page.should have_content("Football Flick")
    end
  end

end