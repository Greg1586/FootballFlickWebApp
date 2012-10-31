require 'spec_helper'

describe HomepagesController do

  it 'should load the homepage' do
    get :index
    response.should render_template 'index'
  end

end