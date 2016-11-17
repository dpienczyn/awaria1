class Klient < ApplicationRecord
  belongs_to :user
  has_many :zgloszenie
end
