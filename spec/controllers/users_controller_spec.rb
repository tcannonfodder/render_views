require 'spec_helper'

describe UsersController do
	render_views
  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "should have a title" do
    	get 'new'
    	save_and_open_page
    	response.should have_selector('title',:content =>"Render")
    end
  end

end
