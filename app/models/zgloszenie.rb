class Zgloszenie < ApplicationRecord
  belongs_to :dzial
  has_many :zgloszenie_aktywnosc
end
