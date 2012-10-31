require 'spec_helper'
describe VideosController do

  it 'should render homepage ' do
    get :index
    response.should render_template 'index'
  end

  it  'should show video that has been selected' do
    video=Video.new
    Video.should_receive(:find).with("1").and_return(video)
    get :show ,{:id => 1}
  end

  it 'should show all the videos in the database' do
    video=Video.new
    Video.should_receive(:find).with(:all).and_return([video])
    get :index
    assigns(:videos).should match_array([video])
  end
end