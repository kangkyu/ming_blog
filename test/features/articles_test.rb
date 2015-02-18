require "test_helper"

feature "Articles" do
  scenario "shows blog header" do

    visit root_path

    page.must_have_content "Ming Rocks!"
    page.wont_have_content "Hello Ming!"
  end

  scenario "displays a list of articles" do
    Article.create!(title: "Write Test", body: "before you go further")
    Article.create!(title: "Minitest", body: "this time I use minitest and capybara")

    visit root_path

    Article.find_each do |article|
      page.must_have_content(article.title)
      page.must_have_content(article.body)
    end
  end
end
