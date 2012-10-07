# -*- coding: utf-8 -*-

When /я создаю пост с названием "(.*)"/ do |title|
  visit '/posts/new'
  fill_in "Заголовок", :with => title
  fill_in "Текст", :with => "Ололо-шмололо"
  click_button "Создать"
end
