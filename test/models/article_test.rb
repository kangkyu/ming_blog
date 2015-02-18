require 'test_helper'

describe "Article" do
  before do
    @article = Article.new(title: "Write Minitest-BDD post",
                           body: "Show Rails and Capybara example")
  end

  it "has a title attribute" do
    @article.must_respond_to :title
  end

  it "has a body attribute" do
    @article.must_respond_to :body
  end
end