require "test_helper"

class UsersSignupTest < Capybara::Rails::TestCase

  test "sign up with confirmation correct" do
    visit '/signup'
    assert_equal signup_path, current_path

    fill_in 'Name', with: "ming"
    fill_in 'Email', with: "ming@example.com"
    fill_in 'User name', with: "Mr Great"
    fill_in 'Password', with: "1111"
    fill_in 'Password confirmation', with: "1111"
    click_button "save"

    assert_text "Thank you for signup!"
    assert_equal root_path, current_path
  end


  test "sign up with confirmation incorrect" do
    visit '/signup'

    fill_in 'Name', with: "ming"
    fill_in 'Password', with: "1111"
    fill_in 'Password confirmation', with: "somethig else"
    click_button "save"

    assert_text "Password confirmation doesn't match Password"
  end
end
