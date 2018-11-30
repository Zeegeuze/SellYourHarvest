class Seller < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :contact_person, presence: true
  validats :address, uniqueness: true, presence: true
end
