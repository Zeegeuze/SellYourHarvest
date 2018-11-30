class Seller < ApplicationRecord
  has_many :products
  validates :contact_person, presence: true
  validats :address, uniqueness: true, presence: true
end
