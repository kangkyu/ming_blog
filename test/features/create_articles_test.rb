require 'test_helper'

class CreateArticlesTest < Capybara::Rails::TestCase
  test "can create a new article" do
    user = User.create!(name: "ming", email: "ming@example.com", user_name: "Mr Great", password: "1111", password_confirmation: "1111")
    visit login_path
    assert_equal login_path, current_path

    fill_in 'Name', with: "ming"
    fill_in 'Password', with: "1111"
    click_button "Submit"
    assert_text "Login successful"

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
