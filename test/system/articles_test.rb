require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase

  def setup
  end

  test "can create a new article" do

    user = users(:one)
    log_in(user)

    visit articles_path
    click_link "add new article"
    assert_equal new_article_path, current_path

    assert_difference "Article.count" do
      fill_in 'article_title', with: "title"
      fill_in 'article_body', with: "body"
      click_button "Create Article"
      sleep 0.1
    end
    assert_text "article added"
  end

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

  test "deletes an article" do

    user = users(:one)
    log_in(user)

    article = articles(:two)
    visit article_path(article.id)

    assert_difference "Article.count", -1 do
      accept_confirm do
        click_on "delete"
      end
      sleep 0.1
    end
    assert_text "article deleted"
  end
end
