require "test_helper"

class UsersLoginTest < Capybara::Rails::TestCase

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
