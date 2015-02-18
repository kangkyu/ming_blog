require 'test_helper'

describe 'ArticlesController' do
  describe "GET :index" do
    before do
      get :index
    end

    it "renders articles/index" do
      must_render_template 'articles/index'
    end

    it "responds with success" do
      must_respond_with :success
    end
  end
end