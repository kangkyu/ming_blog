ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require 'minitest/rails'

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
require "minitest/rails/capybara"

# Uncomment for awesome colorful output
# require "minitest/pride"
require "minitest/reporters"
Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new(:color => true),
  ENV,
  Minitest.backtrace_filter
)

# Any method defined within a class inherited from Minitest::Test (which is the superclass of ActiveSupport::TestCase)
class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::SystemTestCase
  def log_in(user)
    visit login_path
    fill_in 'Name', with: user.name
    fill_in 'Password', with: "password"
    # default password set as "password" at users.yml
    click_on "Submit"
    assert_text "Login successful"
  end
end

# class CapybaraTestCase < ActionDispatch::IntegrationTest
#   # Make the Capybara DSL available in all integration tests
#   include Capybara::DSL
# end

# While not recommended, you can add Capybara to your integration tests. To do this add the following to your test_helper.rb file:

# class ActionDispatch::IntegrationTest
#   include Capybara::DSL
#   include Capybara::Assertions
# end
