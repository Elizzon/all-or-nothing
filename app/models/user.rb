class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
  		   :registerable, # управляет регистрацией пользователей, позволяет редактировать и удалять аккаунты.
         :recoverable, # позволяет восстановить забытый пароль/Отправляет инструкции по восстановлению на почту.
  #        :rememberable, # позволяет запоминать пользователей на основе cookies. Управляет созданием и удалением токенов.
  #        :trackable, # ведет статистику количества входов, учитывает время и IT-адреса.
  #        :validatable, # предоставляет инструменты валидации e-mail и пароля. Модуль может быть легко настроен
  #        :omniauthable, # добавляет поддержку Omniauth (соц сети)
          :confirmable, #позволяет отправлять письмо с подтверждением регистрации
  #        :lockable #  блокирует аккаунт после указанного в настройках количество неудачных попыток авторизации. 
  #  		   :timeoutable # ведет статистику сессии
          stretches: 12
end
