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

    it "fetches and assigns a list of articles" do
      assigns(:articles).wont_be_nil

      article_ids = assigns(:articles).map(&:id).sort
      article_ids.must_equal Article.pluck(:id).sort
    end
  end
end