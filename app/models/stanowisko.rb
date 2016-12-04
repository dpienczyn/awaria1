class Stanowisko < ApplicationRecord
  has_many :pracownik
  has_many :users
end
