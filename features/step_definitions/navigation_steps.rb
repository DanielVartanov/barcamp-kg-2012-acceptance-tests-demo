# -*- coding: utf-8 -*-

When /иду по адресу "(.*)"/ do |path|
  visit path
end

When /ввожу "(.*)" в поле "(.*)"$/ do |value, field|
  fill_in(field, :with => value)
end

When /нажимаю "(.*)"$/ do |button|
  click_button(button)
end

When /перехожу по ссылке "(.*)"$/ do |link|
  click_link(link)
end

Then /должен увидеть "(.*)"$/ do |text|
  page.should have_content(text)
end

Then /не должен видеть "(.*)"/ do |text|
  page.should have_no_content(text)
end
