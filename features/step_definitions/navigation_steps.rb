# -*- coding: utf-8 -*-

Given /я нахожусь на странице регистрации/ do
  visit '/signup'
end

When /ввожу "(.*)" в поле "(.*)"$/ do |value, field|
  fill_in(field, :with => value)
end

When /нажимаю "(.*)"$/ do |button|
  click_button(button)
end

Then /должен увидеть "(.*)"$/ do |text|
  page.should have_content(text)
end
