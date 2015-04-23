require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def test_should_not_save_without_title
    @article = Article.new
    assert_not @article.save
  end

  def setup
    @article = Article.new(title: "Write Minitest-BDD post",
                           body: "Show Rails and Capybara example")
  end

  test "has a title attribute" do
    assert_respond_to @article, :title
  end

  test "has a body attribute" do
    assert_respond_to @article, :body
  end
end