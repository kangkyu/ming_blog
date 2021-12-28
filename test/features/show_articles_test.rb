require "test_helper"

class ShowArticlesTest < Capybara::Rails::TestCase

  test "shows blog header" do

    visit root_path

    assert_text "Ming Rocks!"
    assert_no_text "Hello Ming!"
  end

  test "displays a list of articles" do

    visit root_path

    Article.find_each do |article|
      assert_text(article.title)
      assert_text(article.body)
    end
  end

  test "displays details of each article" do

    Article.find_each do |article|

      visit article_path(article.id)

      assert_text(article.title)
      assert_text(article.body)
    end
  end
end
