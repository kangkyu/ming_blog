require "test_helper"
require 'minitest/autorun'

feature "Articles" do
  scenario "shows blog header" do
    visit root_path
    page.must_have_content "Ming Rocks!"
    page.wont_have_content "Hello Ming!"
  end

  scenario "displays a list of articles" do
    article1 = Article.create!(title: "Write Test", body: "before you go further")
    article2 = Article.create!(title: "Minitest", body: "this time I use minitest and capybara")
    visit articles_path
    page.must_have_content(article1.title)
    page.must_have_content(article2.title)
  end

end
