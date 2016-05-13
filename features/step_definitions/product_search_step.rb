Given(/^there are|are no "[^"]*" available online$/) do
  home_page.visit_page
end

When(/^the customer searches for "([^"]*)"$/) do |product|
  home_page.search_for_product(product)
end

Then(/^all available "[^"]*" should be presented to the user$/) do
  expect(home_page.product_count).to be > 1
end

Then(/^message "([^"]*)" should be displayed$/) do |msg|
  expect(home_page.search_message.text).to include(msg)
end