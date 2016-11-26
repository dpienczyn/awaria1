class Pracownik < ApplicationRecord
  belongs_to :stanowisko
  belongs_to :dzial
  # belongs_to :user
  has_many :zgloszenie
end
