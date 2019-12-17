require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  class GetIndexText < ArticlesControllerTest

    setup do
      get :index
    end

    test "renders articles/index" do
      assert_template 'articles/index'
    end

    test "get :index responds with success" do
      assert_response :success
    end

    test "fetches and assigns a list of articles" do
      assert_not_nil assigns(:articles)

      article_ids = assigns(:articles).map(&:id).sort
      assert_equal article_ids, Article.pluck(:id).sort
    end
  end

  class GetShowTest < ArticlesControllerTest

    def setup
      get :show, params: { id: articles(:one).id }
    end

    test "get show responds with success" do
      assert_response :success
    end

    test "assigns one article" do
      assert_equal assigns(:article), articles(:one)
    end
  end

  class WithoutLogin < ArticlesControllerTest

    def setup
      session[:user_id] = nil
    end

    def teardown
      assert_equal "Please log in or sign up", flash[:alert]
      assert_response :redirect
    end

    def test_get_new_action
      get :new
    end
    def test_get_edit_action
      get :edit, params: { id: articles(:one).id }
    end

    test "delete destroy action" do
      assert_no_difference 'Article.count' do
        delete :destroy, params: { id: articles(:one).id }
      end
    end

    test "patch update action" do
      assert_no_difference 'Article.count' do
        patch :update, params: { id: articles(:one).id, article: @new_article_hash }
      end
    end

    test "post create action" do
      assert_no_difference "Article.count" do
        post :create, params: { article: @new_article_hash }
      end
    end
  end

  class WithLogin < ArticlesControllerTest

    def setup
      session[:user_id] = users(:one).id
      @new_article_hash = {title: "Updated Title", body: "Updated Article Body"}
    end

    test "delete destroy action" do
      assert_difference 'Article.count', -1 do
        delete :destroy, params: { id: articles(:one).id }
      end
      assert_response :redirect
      assert_equal "article deleted", flash[:notice]
    end

    test "patch update action" do
      assert_no_difference 'Article.count' do
        patch :update, params: { id: articles(:one).id, article: @new_article_hash }
      end
      assert_response :redirect
      assert_equal "article updated", flash[:notice]
    end

    test "patch update action with invalid input" do
      assert_no_difference 'Article.count' do
        patch :update, params: { id: articles(:one).id, article: {title:"", body:""} }
      end
      assert_template 'articles/edit'
      assert_equal "what are you doing? you need a title.", flash[:error]
    end

    test "post create action" do
      assert_difference "Article.count" do
        post :create, params: { article: @new_article_hash }
      end
      assert_response :redirect
      assert_equal "article added", flash[:notice]
    end

    def test_get_new_responds_with_success
      get :new
      assert_response :success
    end
    def test_get_edit_responds_with_success
      get :edit, params: { id: articles(:one).id }
      assert_response :success
    end
  end
end
