require 'spec_helper'
describe VideosController do

  it 'should render homepage ' do
    get :index
    response.should render_template 'index'
  end
end