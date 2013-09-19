require 'uri'
require 'cgi'
# require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|I )fill in the following:$/ do |fields|
  fields.rows_hash.each do |name, value|
    step %{I fill in "#{name}" with "#{value}"}
  end
end

When /^(?:|I )fill in "([^"]*)" within "([^\"]*)" with "([^"]*)"$/ do |field, scope_selector, value|
  within(scope_selector) do
    fill_in(field, :with => value)
  end
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

When /^(?:|I )choose "([^"]*)"$/ do |field|
  choose(field)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^I press "([^\"]*)" within "([^\"]*)"$/ do |button,scope_selector|
  within(scope_selector) do
    click_button(button)
  end
end

When /^(?:|I )check "([^"]*)"$/ do |box|
  check(box)
end

When "I debug" do
  require 'pry'; binding.pry
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Then /^I should see a (\d+) error$/ do |status|
  page.driver.status_code.should == status.to_i
end

Then /^(?:show|show me the page)$/ do
  save_and_open_page
end
