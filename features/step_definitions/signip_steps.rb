# -*- coding: utf-8 -*-

Given /зарегистрирован пользователь с адресом "(.*)"/ do |email|
  step 'я нахожусь на странице регистрации'
  step %{я ввожу "#{email}" в поле "Email"}
  step 'И ввожу "123456" в поле "Пароль"'
  step 'И ввожу "123456" в поле "Подтверждение"'
  step 'И нажимаю "Зарегистрироваться"'
  step 'То я должен увидеть "Спасибо за регистрацию"'
end

Given /я не залогинен/ do
  step 'иду по ссылке "Выход"'
end

Given /я нахожусь на главной странице/ do
  step 'я иду по адресу "/"'
end

Given /я нахожусь на странице регистрации/ do
  step 'я нахожусь на главной странице'
  step 'я иду по ссылке "Регистрация"'
end
