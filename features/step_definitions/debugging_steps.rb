# -*- coding: utf-8 -*-
When /^I wait for (\d+) second(?:s|)$/ do |amount|
  sleep amount.to_i
end

Then /^show me the page$/ do
  save_and_open_page
end

Then /^покажи мне скриншот страницы$/ do
  file_name = 'screenshot.png'
  page.driver.render file_name
  wait_until { File.exists?(file_name) }
  system "open #{file_name}"
end

Then /^give me debugger$/ do
  debugger
  0
end
