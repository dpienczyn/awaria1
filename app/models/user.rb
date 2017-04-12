class User < ApplicationRecord
  after_create :welcome_send
  def welcome_send
    WelcomeMailer.welcome_send(self).deliver
  end
  # belongs_to :stanowisko
  # before_create :set_default_stanowisko
  # # or
  # # before_validation :set_default_stanowisko
  #
  # private
  # def set_default_stanowisko
  #   self.stanowisko ||= Stanowisko.find_by_nazwa('Klient')
  # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
