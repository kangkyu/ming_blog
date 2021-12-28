require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase

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


  test "log in" do
    user = User.create!(name: "ming",
      email: "ming@example.com",
      user_name: "Mr Great",
      password: "1111",
      password_confirmation: "1111")
    visit login_path
    assert_equal login_path, current_path

    fill_in 'Name', with: "ming"
    fill_in 'Password', with: "1111"
    click_button "Submit"
    assert_text "Login successful"
  end
end
