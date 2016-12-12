class Klient < ApplicationRecord
  # belongs_to :user
  has_many :zgloszenie
end
def self.search(search)
    order('created_at DESC').where('lower(name) LIKE ?', "%#{search}%".downcase)
  end

