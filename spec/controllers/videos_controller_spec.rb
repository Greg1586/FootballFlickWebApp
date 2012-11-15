require 'spec_helper'
describe VideosController do

  it 'should render homepage ' do
    get :index
    response.should render_template 'index'
  end

  it 'should render show page ' do
    visit('/videos')
    get :show ,{:id => 1661360432}
    assigns(:description).should eq("This is the video number 10.")
  end


end