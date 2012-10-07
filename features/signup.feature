# language: ru

Функционал: Регистрация
    Для учёта пользователей, хранения из профилей и возможности авторизоваться
    Любой юзер, имеющий email должен иметь возможность зарегистрироваться

  Сценарий: Пользователь удачно регистрируется
    Допустим я нахожусь на странице регистрации

    Если я ввожу "daniel.vartanov@gmail.com" в поле "Email"
    И ввожу "123456" в поле "Пароль"
    И ввожу "123456" в поле "Подтверждение"
    И нажимаю "Зарегистрироваться"

    То я должен увидеть "Спасибо за регистрацию"

  Сценарий: Подтверждение пароля не совпадает
    Допустим я нахожусь на странице регистрации

    Если я ввожу "daniel.vartanov@gmail.com" в поле "Email"
    И ввожу "123456" в поле "Пароль"
    И ввожу "123456" в поле "Подтверждение"
    И нажимаю "Зарегистрироваться"

    То я должен увидеть "Спасибо за регистрацию"

  Сценарий: Пользователь пытается зарегистрироваться с уже занятым адресом
    Допустим я нахожусь на странице регистрации
    И ввожу "daniel.vartanov@gmail.com" в поле "Email"
    И ввожу "123456" в поле "Пароль"
    И ввожу "123456" в поле "Подтверждение"
    И нажимаю "Зарегистрироваться"

    Если я ввожу "daniel.vartanov@gmail.com" в поле "Email"
    И ввожу "123456" в поле "Пароль"
    И ввожу "123456" в поле "Подтверждение"
    И нажимаю "Зарегистрироваться"

    То должен увидеть "Пользователь с таким адресом уже зарегистрирован"