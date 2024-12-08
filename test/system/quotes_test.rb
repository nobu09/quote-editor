require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit quotes_url
  #
  #   assert_selector "h1", text: "Quotes"
  # end
  visit quotes_path
  assert_selector "h1", text: "Quotes"

  click_on "New quote"
  assert_selector "h1", text: "New quote"

  fill_in "Name", with: "Capybara Quote"
  click_on "Create quote"

  assert_selector "h1", text: "Quotes"
  assert_text "Capybara quote"
end
