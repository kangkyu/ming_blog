require 'test_helper'

class CreateArticlesTest < Capybara::Rails::TestCase

  def setup
    user = users(:one)
    log_in(user)
  end

  test "can create a new article" do

    visit articles_path
    click_link "add new article"
    assert_equal new_article_path, current_path

    assert_difference "Article.count" do
      fill_in 'article_title', with: "title"
      fill_in 'article_body', with: "body"
      click_button "Create Article"
    end
  end
end
