class Dzial < ApplicationRecord
  has_many :pracownik
  has_many :zgloszenie
end
