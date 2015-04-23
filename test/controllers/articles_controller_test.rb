require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  
  # test "GET :index" do
  def setup
    get :index
  end

  test "renders articles/index" do
    assert_template 'articles/index'
  end

  test "responds with success" do
    assert_response :success
  end

  test "fetches and assigns a list of articles" do
    assert_not_nil assigns(:articles)

    article_ids = assigns(:articles).map(&:id).sort
    assert_equal article_ids, Article.pluck(:id).sort
  end
end