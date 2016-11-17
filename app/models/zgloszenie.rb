class Zgloszenie < ApplicationRecord
  belongs_to :klient
  belongs_to :pracownik
  belongs_to :dzial
  has_many :zgloszenie_aktywnosc
end
